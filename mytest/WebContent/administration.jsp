<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>职工管理系统 - 后台管理</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="bootstrap-3.3.5-dist/css/bootstrap.min.css">
	<script type="text/javascript" src="bootstrap-3.3.5-dist/js/jquery-1.11.3.js"></script>
	<script type="text/javascript" src="bootstrap-3.3.5-dist/js/bootstrap.min.js"></script>
    <style>
	 {
           margin: 0;
           padding: 0;
           box-sizing: border-box;
           font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
       }
        
        :root {
	-primary: #1a73e8;
	-primary-dark: #0d47a1;
	-secondary: #f5f8fa;
	-accent: #34a853;
	-warning: #fbbc05;
	-danger: #ea4335;
	-text: #202124;
	-text-light: #5f6368;
	-card-shadow: 0 4px 12px rgba(0, 0, 0, 0.08);
	-sidebar-width: 260px;
        }
        
        body {
            background-color: #f8f9fa;
            color: var(--text);
            line-height: 1.6;
            display: flex;
            min-height: 100vh;
        }
        
        / 侧边栏样式 /
        .sidebar {
            width: var(--sidebar-width);
            background: linear-gradient(180deg, var(--primary), var(--primary-dark));
            color: white;
            height: 100vh;
            position: fixed;
            overflow-y: auto;
            transition: all 0.3s ease;
            z-index: 99;
        }
        
        .sidebar-header {
            padding: 1.5rem 1.5rem 1rem;
            border-bottom: 1px solid rgba(255, 255, 255, 0.1);
        }
        
        .sidebar-header h2 {
            display: flex;
            align-items: center;
            gap: 0.75rem;
            font-size: 1.25rem;
        }
        
        .sidebar-header h2 i {
            font-size: 1.75rem;
        }
        
        .nav-links {
            padding: 1rem 0;
        }
        
        .nav-item {
            padding: 0.75rem 1.5rem;
            display: flex;
            align-items: center;
            gap: 1rem;
            color: rgba(255, 255, 255, 0.8);
            text-decoration: none;
            transition: all 0.3s ease;
            border-left: 4px solid transparent;
        }
        
        .nav-item:hover, .nav-item.active {
            background: rgba(255, 255, 255, 0.1);
            color: white;
            border-left: 4px solid var(--accent);
        }
        
        .nav-item i {
            width: 24px;
            text-align: center;
        }
        
        / 主内容区域 /
        .main-content {
            flex: 1;
            margin-left: var(--sidebar-width);
            padding: 2rem;
        }
        
        / 顶部导航栏 /
        .top-nav {
            background: white;
            border-radius: 10px;
            padding: 1rem 1.5rem;
            display: flex;
            justify-content: space-between;
            align-items: center;
            box-shadow: var(--card-shadow);
            margin-bottom: 2rem;
        }
        
        .search-bar {
            display: flex;
            align-items: center;
            background: var(--secondary);
            border-radius: 30px;
            padding: 0.5rem 1rem;
            width: 300px;
        }
        
        .search-bar input {
            background: transparent;
            border: none;
            padding: 0.5rem;
            width: 100%;
            outline: none;
        }
        
        .user-info {
            display: flex;
            align-items: center;
            gap: 1rem;
        }
        
        .user-avatar {
            width: 40px;
            height: 40px;
            border-radius: 50%;
            background: var(--primary);
            display: flex;
            align-items: center;
            justify-content: center;
            color: white;
            font-weight: bold;
        }
        
        / 模块标题 /
        .module-header {
            margin-bottom: 2rem;
        }
        
        .module-header h1 {
            font-size: 1.75rem;
            color: var(--primary-dark);
            margin-bottom: 0.5rem;
        }
        
        .module-header p {
            color: var(--text-light);
        }
        
        / 卡片容器 /
        .card-container {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(320px, 1fr));
            gap: 1.5rem;
            margin-bottom: 2.5rem;
        }
        
        .card {
            background: white;
            border-radius: 12px;
            box-shadow: var(--card-shadow);
            overflow: hidden;
        }
        
        .card-header {
            background: linear-gradient(135deg, var(--primary), var(--primary-dark));
            color: white;
            padding: 1.25rem;
            font-size: 1.1rem;
            font-weight: 600;
            display: flex;
            align-items: center;
            gap: 0.75rem;
        }
        
        .card-body {
            padding: 1.5rem;
        }
        
        / 表格样式 /
        .table-container {
            overflow-x: auto;
            margin-top: 1.5rem;
        }
        
        table {
            width: 100%;
            border-collapse: collapse;
        }
        
        th, td {
            padding: 1rem;
            text-align: left;
            border-bottom: 1px solid #eee;
        }
        
        th {
            background-color: #f5f8fa;
            font-weight: 600;
            color: var(--text-light);
        }
        
        tr:hover {
            background-color: #fafbfc;
        }
        
        / 按钮样式 /
        .btn {
            display: inline-block;
            padding: 0.6rem 1.25rem;
            background: var(--primary);
            color: white;
            text-decoration: none;
            border-radius: 6px;
            font-weight: 500;
            transition: all 0.3s ease;
            border: none;
            cursor: pointer;
            text-align: center;
            font-size: 0.9rem;
        }
        
        .btn:hover {
            background: var(--primary-dark);
            transform: translateY(-2px);
        }
        
        .btn-sm {
            padding: 0.4rem 0.8rem;
            font-size: 0.85rem;
        }
        
        .btn-success {
            background: var(--accent);
        }
        
        .btn-success:hover {
            background: #2d9246;
        }
        
        .btn-warning {
            background: var(--warning);
        }
        
        .btn-warning:hover {
            background: #e0a800;
        }
        
        .btn-danger {
            background: var(--danger);
        }
        
        .btn-danger:hover {
            background: #d62c1f;
        }
        
        .btn-outline {
            background: transparent;
            border: 2px solid var(--primary);
            color: var(--primary);
        }
        
        .btn-outline:hover {
            background: var(--primary);
            color: white;
        }
        
        / 表单样式 /
        .form-group {
            margin-bottom: 1.25rem;
        }
        
        .form-group label {
            display: block;
            margin-bottom: 0.5rem;
            font-weight: 500;
            color: var(--text);
        }
        
        .form-control {
            width: 100%;
            padding: 0.75rem;
            border: 1px solid #ddd;
            border-radius: 6px;
            font-size: 1rem;
            transition: border 0.3s ease;
        }
        
        .form-control:focus {
            outline: none;
            border-color: var(--primary);
            box-shadow: 0 0 0 3px rgba(26, 115, 232, 0.2);
        }
        
        / 统计卡片 /
        .stats-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
            gap: 1.5rem;
            margin-bottom: 2rem;
        }
        
        .stat-card {
            background: white;
            border-radius: 10px;
            padding: 1.5rem;
            box-shadow: var(--card-shadow);
            display: flex;
            align-items: center;
            gap: 1rem;
        }
        
        .stat-icon {
            width: 50px;
            height: 50px;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 1.5rem;
        }
        
        .stat-icon.salary {
            background: rgba(52, 168, 83, 0.15);
            color: var(--accent);
        }
        
        .stat-icon.position {
            background: rgba(26, 115, 232, 0.15);
            color: var(--primary);
        }
        
        .stat-icon.penalty {
            background: rgba(234, 67, 53, 0.15);
            color: var(--danger);
        }
        
        .stat-icon.bonus {
            background: rgba(251, 188, 5, 0.15);
            color: var(--warning);
        }
        
        .stat-content {
            flex: 1;
        }
        
        .stat-value {
            font-size: 1.5rem;
            font-weight: 700;
            margin-bottom: 0.25rem;
        }
        
        .stat-label {
            color: var(--text-light);
            font-size: 0.9rem;
        }
        
        / 操作按钮组 /
        .action-buttons {
            display: flex;
            gap: 0.5rem;
        }
        
        / 响应式设计 /
        @media (max-width: 992px) {
            .sidebar {
                width: 70px;
            }
            
            .sidebar-header h2 span, .nav-item span {
                display: none;
            }
            
            .sidebar-header h2 {
                justify-content: center;
            }
            
            .nav-item {
                justify-content: center;
                padding: 0.75rem;
            }
            
            .main-content {
                margin-left: 70px;
            }
        }
        
        @media (max-width: 768px) {
            .search-bar {
                width: 200px;
            }
            
            .top-nav {
                flex-direction: column;
                gap: 1rem;
                align-items: flex-start;
            }
            
            .user-info {
                align-self: flex-end;
            }
        }
        
        @media (max-width: 576px) {
            .stats-grid {
                grid-template-columns: 1fr;
            }
            
            .card-container {
                grid-template-columns: 1fr;
            }
        }
        
        / 标签样式 /
        .tag {
            display: inline-block;
            padding: 0.25rem 0.75rem;
            border-radius: 30px;
            font-size: 0.8rem;
            font-weight: 500;
        }
        
        .tag-promotion {
            background: rgba(52, 168, 83, 0.15);
            color: var(--accent);
        }
        
        .tag-demotion {
            background: rgba(234, 67, 53, 0.15);
            color: var(--danger);
        }
        
        .tag-resignation {
            background: rgba(128, 128, 128, 0.15);
            color: #666;
        }
        
        / 模态框样式 /
        .modal-overlay {
            position: fixed;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background: rgba(0, 0, 0, 0.5);
            display: flex;
            align-items: center;
            justify-content: center;
            z-index: 1000;
            opacity: 0;
            visibility: hidden;
            transition: all 0.3s ease;
        }
        
        .modal-overlay.active {
            opacity: 1;
            visibility: visible;
        }
        
        .modal {
            background: white;
            border-radius: 12px;
            width: 90%;
            max-width: 500px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.2);
            transform: translateY(-20px);
            transition: transform 0.3s ease;
        }
        
        .modal-overlay.active .modal {
            transform: translateY(0);
        }
        
        .modal-header {
            padding: 1.25rem;
            border-bottom: 1px solid #eee;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        
        .modal-header h3 {
            font-size: 1.25rem;
            color: var(--primary-dark);
        }
        
        .modal-body {
            padding: 1.5rem;
        }
        
        .modal-footer {
            padding: 1rem 1.5rem;
            border-top: 1px solid #eee;
            display: flex;
            justify-content: flex-end;
            gap: 0.75rem;
        }
        
        .close-btn {
            background: none;
            border: none;
            font-size: 1.5rem;
            cursor: pointer;
            color: #999;
            transition: color 0.3s ease;
        }
        
        .close-btn:hover {
            color: var(--danger);
        }
        
        / 选项卡样式 /
        .tabs {
            display: flex;
            border-bottom: 1px solid #eee;
            margin-bottom: 1.5rem;
        }
        
        .tab {
            padding: 0.75rem 1.5rem;
            cursor: pointer;
            color: var(--text-light);
            border-bottom: 3px solid transparent;
            transition: all 0.3s ease;
        }
        
        .tab.active {
            color: var(--primary);
            border-bottom: 3px solid var(--primary);
            font-weight: 500;
        }
        
        .tab-content {
            display: none;
        }
        
        .tab-content.active {
            display: block;
        }
    </style>
</head>
<body>
    <!-- 侧边导航栏 -->
    <div class="sidebar">
        <div class="sidebar-header">
            <h2>
                <i class="fas fa-cogs"></i>
                <span>后台管理</span>
            </h2>
        </div>
        
        <div class="nav-links">
            <a href="#" class="nav-item">
                <i class="fas fa-tachometer-alt"></i>
                <span>控制面板</span>
            </a>
            <a href="#" class="nav-item">
                <i class="fas fa-users"></i>
                <span>用户管理</span>
            </a>
            <a href="#" class="nav-item">
                <i class="fas fa-calendar-check"></i>
                <span>考勤管理</span>
            </a>
            <a href="#" class="nav-item active">
                <i class="fas fa-money-bill-wave"></i>
                <span>薪资管理</span>
            </a>
            <a href="#" class="nav-item">
                <i class="fas fa-user-tie"></i>
                <span>职位管理</span>
            </a>
            <a href="#" class="nav-item">
                <i class="fas fa-file-alt"></i>
                <span>报表统计</span>
            </a>
            <a href="#" class="nav-item">
                <i class="fas fa-cog"></i>
                <span>系统设置</span>
            </a>
        </div>
    </div>
    
    <!-- 主内容区域 -->
    <div class="main-content">
        <!-- 顶部导航 -->
        <div class="top-nav">
            <div class="search-bar">
                <i class="fas fa-search"></i>
                <input type="text" placeholder="搜索职工、部门或职位...">
            </div>
            
            <div class="user-info">
                <div class="notifications">
                    <i class="fas fa-bell"></i>
                </div>
                <div class="user-avatar">张</div>
                <div class="user-name">管理员</div>
            </div>
        </div>
        
        <!-- 薪资管理模块 -->
        <div class="salary-module">
            <div class="module-header">
                <h1><i class="fas fa-money-bill-wave"></i> 薪资管理系统</h1>
                <p>管理员工薪资、奖金、罚款及工资发放记录</p>
            </div>
            
            <!-- 统计卡片 -->
            <div class="stats-grid">
                <div class="stat-card">
                    <div class="stat-icon salary">
                        <i class="fas fa-wallet"></i>
                    </div>
                    <div class="stat-content">
                        <div class="stat-value">¥1,258,400</div>
                        <div class="stat-label">本月薪资总额</div>
                    </div>
                </div>
                
                <div class="stat-card">
                    <div class="stat-icon bonus">
                        <i class="fas fa-gift"></i>
                    </div>
                    <div class="stat-content">
                        <div class="stat-value">¥286,500</div>
                        <div class="stat-label">奖金发放总额</div>
                    </div>
                </div>
                
                <div class="stat-card">
                    <div class="stat-icon penalty">
                        <i class="fas fa-exclamation-triangle"></i>
                    </div>
                    <div class="stat-content">
                        <div class="stat-value">¥38,200</div>
                        <div class="stat-label">本月罚款总额</div>
                    </div>
                </div>
                
                <div class="stat-card">
                    <div class="stat-icon position">
                        <i class="fas fa-users"></i>
                    </div>
                    <div class="stat-content">
                        <div class="stat-value">1,258</div>
                        <div class="stat-label">已发薪职工</div>
                    </div>
                </div>
            </div>
            
            <!-- 薪资管理卡片 -->
            <div class="card-container">
                <div class="card">
                    <div class="card-header">
                        <i class="fas fa-calculator"></i> 薪资结构设置
                    </div>
                    <div class="card-body">
                        <div class="form-group">
                            <label>基本工资基数</label>
                            <input type="number" class="form-control" value="5000">
                        </div>
                        
                        <div class="form-group">
                            <label>全勤奖金</label>
                            <input type="number" class="form-control" value="500">
                        </div>
                        
                        <div class="form-group">
                            <label>绩效奖金比例</label>
                            <input type="number" class="form-control" value="15" step="5">
                        </div>
                        
                        <div class="form-group">
                            <label>缺勤罚款/天</label>
                            <input type="number" class="form-control" value="200">
                        </div>
                        
                        <button class="btn btn-success">保存设置</button>
                    </div>
                </div>
                
                <div class="card">
                    <div class="card-header">
                        <i class="fas fa-gift"></i> 奖金管理
                    </div>
                    <div class="card-body">
                        <div class="form-group">
                            <label>奖金类型</label>
                            <select class="form-control">
                                <option>全勤奖</option>
                                <option>绩效奖金</option>
                                <option>年终奖</option>
                                <option>项目奖金</option>
                                <option>其他奖励</option>
                            </select>
                        </div>
                        
                        <div class="form-group">
                            <label>发放金额</label>
                            <input type="number" class="form-control" placeholder="输入金额">
                        </div>
                        
                        <div class="form-group">
                            <label>发放对象</label>
                            <select class="form-control">
                                <option>全体员工</option>
                                <option>特定部门</option>
                                <option>特定员工</option>
                            </select>
                        </div>
                        
                        <div class="form-group">
                            <label>发放说明</label>
                            <textarea class="form-control" rows="2" placeholder="奖金说明"></textarea>
                        </div>
                        
                        <button class="btn btn-success">发放奖金</button>
                    </div>
                </div>
                
                <div class="card">
                    <div class="card-header">
                        <i class="fas fa-exclamation-circle"></i> 罚款管理
                    </div>
                    <div class="card-body">
                        <div class="form-group">
                            <label>罚款类型</label>
                            <select class="form-control">
                                <option>迟到/早退</option>
                                <option>缺勤</option>
                                <option>工作失误</option>
                                <option>违规操作</option>
                                <option>其他处罚</option>
                            </select>
                        </div>
                        
                        <div class="form-group">
                            <label>罚款金额</label>
                            <input type="number" class="form-control" placeholder="输入金额">
                        </div>
                        
                        <div class="form-group">
                            <label>处罚对象</label>
                            <select class="form-control">
                                <option>选择员工</option>
                            </select>
                        </div>
                        
                        <div class="form-group">
                            <label>处罚说明</label>
                            <textarea class="form-control" rows="2" placeholder="处罚原因及说明"></textarea>
                        </div>
                        
                        <button class="btn btn-danger">执行处罚</button>
                    </div>
                </div>
            </div>
            
            <!-- 薪资记录表格 -->
            <div class="card">
                <div class="card-header">
                    <i class="fas fa-history"></i> 薪资发放记录
                </div>
                <div class="card-body">
                    <div class="table-container">
                        <table>
                            <thead>
                                <tr>
                                    <th>职工姓名</th>
                                    <th>部门</th>
                                    <th>基本工资</th>
                                    <th>奖金</th>
                                    <th>罚款</th>
                                    <th>实发工资</th>
                                    <th>发放日期</th>
                                    <th>状态</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>张明</td>
                                    <td>技术部</td>
                                    <td>¥8,500</td>
                                    <td>¥1,200</td>
                                    <td>¥0</td>
                                    <td>¥9,700</td>
                                    <td>2023-10-05</td>
                                    <td><span class="tag tag-promotion">已发放</span></td>
                                </tr>
                                <tr>
                                    <td>李华</td>
                                    <td>市场部</td>
                                    <td>¥7,000</td>
                                    <td>¥800</td>
                                    <td>¥200</td>
                                    <td>¥7,600</td>
                                    <td>2023-10-05</td>
                                    <td><span class="tag tag-promotion">已发放</span></td>
                                </tr>
                                <tr>
                                    <td>王芳</td>
                                    <td>人力资源</td>
                                    <td>¥6,500</td>
                                    <td>¥1,500</td>
                                    <td>¥0</td>
                                    <td>¥8,000</td>
                                    <td>2023-10-05</td>
                                    <td><span class="tag tag-promotion">已发放</span></td>
                                </tr>
                                <tr>
                                    <td>刘伟</td>
                                    <td>财务部</td>
                                    <td>¥9,000</td>
                                    <td>¥0</td>
                                    <td>¥500</td>
                                    <td>¥8,500</td>
                                    <td>2023-10-05</td>
                                    <td><span class="tag tag-promotion">已发放</span></td>
                                </tr>
                                <tr>
                                    <td>陈静</td>
                                    <td>技术部</td>
                                    <td>¥8,000</td>
                                    <td>¥2,000</td>
                                    <td>¥0</td>
                                    <td>¥10,000</td>
                                    <td>2023-10-05</td>
                                    <td><span class="tag tag-promotion">已发放</span></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        
        <!-- 职位管理模块 -->
        <div class="position-module" style="margin-top: 3rem;">
            <div class="module-header">
                <h1><i class="fas fa-user-tie"></i> 职位管理系统</h1>
                <p>管理员工职位变动、升职、降职及离职流程</p>
            </div>
            
            <!-- 职位管理卡片 -->
            <div class="card-container">
                <div class="card">
                    <div class="card-header">
                        <i class="fas fa-user-plus"></i> 职位变更申请
                    </div>
                    <div class="card-body">
                        <div class="form-group">
                            <label>变更类型</label>
                            <select class="form-control">
                                <option>升职</option>
                                <option>降职</option>
                                <option>离职</option>
                                <option>调岗</option>
                            </select>
                        </div>
                        
                        <div class="form-group">
                            <label>选择员工</label>
                            <select class="form-control">
                                <option>选择员工</option>
                            </select>
                        </div>
                        
                        <div class="form-group">
                            <label>新职位</label>
                            <input type="text" class="form-control" placeholder="输入新职位">
                        </div>
                        
                        <div class="form-group">
                            <label>新部门</label>
                            <select class="form-control">
                                <option>技术部</option>
                                <option>市场部</option>
                                <option>财务部</option>
                                <option>人力资源</option>
                                <option>行政部</option>
                            </select>
                        </div>
                        
                        <div class="form-group">
                            <label>变更原因</label>
                            <textarea class="form-control" rows="3" placeholder="详细说明变更原因"></textarea>
                        </div>
                        
                        <button class="btn btn-success">提交申请</button>
                    </div>
                </div>
                
                <div class="card">
                    <div class="card-header">
                        <i class="fas fa-tasks"></i> 待处理申请
                    </div>
                    <div class="card-body">
                        <div class="pending-list">
                            <div class="pending-item">
                                <div class="pending-header">
                                    <strong>张明</strong> 
                                    <span class="tag tag-promotion">升职申请</span>
                                </div>
                                <p>技术部 → 高级工程师</p>
                                <p class="small-text">申请时间: 2023-10-01</p>
                                <div class="action-buttons" style="margin-top: 0.75rem;">
                                    <button class="btn btn-success btn-sm">批准</button>
                                    <button class="btn btn-danger btn-sm">拒绝</button>
                                    <button class="btn btn-outline btn-sm">查看详情</button>
                                </div>
                            </div>
                            
                            <hr style="margin: 1rem 0; border-color: #eee;">
                            
                            <div class="pending-item">
                                <div class="pending-header">
                                    <strong>李华</strong> 
                                    <span class="tag tag-resignation">离职申请</span>
                                </div>
                                <p>市场部专员</p>
                                <p class="small-text">申请时间: 2023-09-28</p>
                                <div class="action-buttons" style="margin-top: 0.75rem;">
                                    <button class="btn btn-success btn-sm">批准</button>
                                    <button class="btn btn-danger btn-sm">拒绝</button>
                                    <button class="btn btn-outline btn-sm">查看详情</button>
                                </div>
                            </div>
                            
                            <hr style="margin: 1rem 0; border-color: #eee;">
                            
                            <div class="pending-item">
                                <div class="pending-header">
                                    <strong>王芳</strong> 
                                    <span class="tag tag-demotion">调岗申请</span>
                                </div>
                                <p>人力资源 → 行政部</p>
                                <p class="small-text">申请时间: 2023-09-30</p>
                                <div class="action-buttons" style="margin-top: 0.75rem;">
                                    <button class="btn btn-success btn-sm">批准</button>
                                    <button class="btn btn-danger btn-sm">拒绝</button>
                                    <button class="btn btn-outline btn-sm">查看详情</button>
                                </div>
                            </div>
                        </div>
                        
                        <button class="btn btn-outline" style="width: 100%; margin-top: 1rem;">
                            查看全部申请
                        </button>
                    </div>
                </div>
                
                <div class="card">
                    <div class="card-header">
                        <i class="fas fa-chart-line"></i> 职位分布统计
                    </div>
                    <div class="card-body">
                        <div style="height: 250px; display: flex; align-items: center; justify-content: center; flex-direction: column;">
                            <div style="width: 150px; height: 150px; border-radius: 50%; 
                                        background: conic-gradient(
4CAF50 0% 25%, 
2196F3 25% 50%, 
FFC107 50% 75%, 
9C27B0 75% 100%
                                        );"></div>
                            <div style="margin-top: 1rem; text-align: center;">
                                <p>公司职位分布比例</p>
                            </div>
                        </div>
                        
                        <div class="legend">
                            <div style="display: flex; align-items: center; margin-bottom: 0.5rem;">
                                <div style="width: 12px; height: 12px; background: #4CAF50; margin-right: 0.5rem;"></div>
                                <span>管理岗位 (25%)</span>
                            </div>
                            <div style="display: flex; align-items: center; margin-bottom: 0.5rem;">
                                <div style="width: 12px; height: 12px; background: #2196F3; margin-right: 0.5rem;"></div>
                                <span>技术岗位 (25%)</span>
                            </div>
                            <div style="display: flex; align-items: center; margin-bottom: 0.5rem;">
                                <div style="width: 12px; height: 12px; background: #FFC107; margin-right: 0.5rem;"></div>
                                <span>市场岗位 (25%)</span>
                            </div>
                            <div style="display: flex; align-items: center;">
                                <div style="width: 12px; height: 12px; background: #9C27B0; margin-right: 0.5rem;"></div>
                                <span>行政岗位 (25%)</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
            <!-- 职位变更记录 -->
            <div class="card">
                <div class="card-header">
                    <i class="fas fa-history"></i> 职位变更记录
                </div>
                <div class="card-body">
                    <div class="tabs">
                        <div class="tab active">全部记录</div>
                        <div class="tab">升职记录</div>
                        <div class="tab">降职记录</div>
                        <div class="tab">离职记录</div>
                    </div>
                    
                    <div class="table-container">
                        <table>
                            <thead>
                                <tr>
                                    <th>职工姓名</th>
                                    <th>变更类型</th>
                                    <th>原职位/部门</th>
                                    <th>新职位/部门</th>
                                    <th>变更日期</th>
                                    <th>操作人</th>
                                    <th>状态</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>张明</td>
                                    <td><span class="tag tag-promotion">升职</span></td>
                                    <td>工程师 / 技术部</td>
                                    <td>高级工程师 / 技术部</td>
                                    <td>2023-09-15</td>
                                    <td>管理员</td>
                                    <td>已完成</td>
                                </tr>
                                <tr>
                                    <td>李华</td>
                                    <td><span class="tag tag-resignation">离职</span></td>
                                    <td>市场专员 / 市场部</td>
                                    <td>-</td>
                                    <td>2023-09-10</td>
                                    <td>管理员</td>
                                    <td>已完成</td>
                                </tr>
                                <tr>
                                    <td>王芳</td>
                                    <td><span class="tag tag-demotion">调岗</span></td>
                                    <td>招聘专员 / 人力资源</td>
                                    <td>行政助理 / 行政部</td>
                                    <td>2023-08-22</td>
                                    <td>管理员</td>
                                    <td>已完成</td>
                                </tr>
                                <tr>
                                    <td>刘伟</td>
                                    <td><span class="tag tag-promotion">升职</span></td>
                                    <td>财务助理 / 财务部</td>
                                    <td>财务主管 / 财务部</td>
                                    <td>2023-08-05</td>
                                    <td>管理员</td>
                                    <td>已完成</td>
                                </tr>
                                <tr>
                                    <td>陈静</td>
                                    <td><span class="tag tag-demotion">降职</span></td>
                                    <td>项目经理 / 技术部</td>
                                    <td>项目助理 / 技术部</td>
                                    <td>2023-07-18</td>
                                    <td>管理员</td>
                                    <td>已完成</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        // 切换选项卡
        const tabs = document.querySelectorAll('.tab');
        tabs.forEach(tab => {
            tab.addEventListener('click', function() {
                // 移除所有active类
                tabs.forEach(t => t.classList.remove('active'));
                // 给当前点击的选项卡添加active类
                this.classList.add('active');
            });
        });
        
        // 统计卡片动画
        const statCards = document.querySelectorAll('.stat-card');
        statCards.forEach((card, index) => {
            card.style.opacity = '0';
            card.style.transform = 'translateY(20px)';
            
            setTimeout(() => {
                card.style.transition = 'opacity 0.5s ease, transform 0.5s ease';
                card.style.opacity = '1';
                card.style.transform = 'translateY(0)';
            }, 200 * index);
        });
        
        // 模拟数据加载效果
        document.addEventListener('DOMContentLoaded', function() {
            const loadingRows = document.querySelectorAll('tbody tr');
            loadingRows.forEach((row, index) => {
                row.style.opacity = '0';
                
                setTimeout(() => {
                    row.style.transition = 'opacity 0.3s ease';
                    row.style.opacity = '1';
                }, 100 * index);
            });
        });
    </script>
</body>
</html>
