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
        <div class="position-module">
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
    #4CAF50 0% 25%, 
    #2196F3 25% 50%, 
    #FFC107 50% 75%, 
    #9C27B0 75% 100%
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
</script>
    </div>

    <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>