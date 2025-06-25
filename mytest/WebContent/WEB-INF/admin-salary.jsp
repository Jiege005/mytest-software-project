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
    <link rel="stylesheet" href="bootstrap-3.3.5-dist/css/bootstrap.min.css">
    <script type="text/javascript" src="bootstrap-3.3.5-dist/js/jquery-1.11.3.js"></script>
    <script type="text/javascript" src="bootstrap-3.3.5-dist/js/bootstrap.min.js"></script>
    <jsp:include page="admin-css.jsp"></jsp:include>
</head>
<body>
    <jsp:include page="sidebar.jsp"></jsp:include>
    
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
                <div class="user-avatar">${username.charAt(0)}</div>
                <div class="user-name">${username}</div>
            </div>
        </div>
        
        <!-- 动态内容区域 -->
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
    </div>

</body>
</html>