<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>职工管理系统</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
	<link rel="stylesheet" href="bootstrap-3.3.5-dist/css/bootstrap.min.css">
	<script type="text/javascript" src="bootstrap-3.3.5-dist/js/jquery-1.11.3.js"></script>
	<script type="text/javascript" src="bootstrap-3.3.5-dist/js/bootstrap.min.js"></script>
    <style type="text/css">
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        
        :root {
            --primary: #1a73e8;
            --primary-dark: #0d47a1;
            --secondary: #f5f8fa;
            --accent: #34a853;
            --warning: #fbbc05;
            --danger: #ea4335;
            --text: #202124;
            --text-light: #5f6368;
            --card-shadow: 0 4px 12px rgba(0, 0, 0, 0.08);
        }
        
        body {
            background-color: #f8f9fa;
            color: var(--text);
            line-height: 1.6;
        }

        /* Main Content */
        main {
            max-width: 1200px;
            margin: 2rem auto;
            padding: 0 2rem;
        }
        
        .welcome-section {
            background: white;
            border-radius: 12px;
            padding: 2.5rem;
            margin-bottom: 2.5rem;
            box-shadow: var(--card-shadow);
            text-align: center;
            position: relative;
            overflow: hidden;
        }
        
        .welcome-section::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 5px;
            background: linear-gradient(90deg, var(--primary), var(--accent));
        }
        
        .welcome-section h2 {
            font-size: 2rem;
            margin-bottom: 1rem;
            color: var(--primary-dark);
        }
        
        .welcome-section p {
            color: var(--text-light);
            max-width: 700px;
            margin: 0 auto 1.5rem;
        }
        
        .stats-container {
            display: flex;
            justify-content: center;
            gap: 1.5rem;
            margin-top: 1.5rem;
        }
        
        .stat-card {
            background: var(--secondary);
            border-radius: 8px;
            padding: 1.25rem;
            min-width: 150px;
            text-align: center;
            transition: transform 0.3s ease;
        }
        
        .stat-card:hover {
            transform: translateY(-5px);
        }
        
        .stat-value {
            font-size: 2rem;
            font-weight: 700;
            color: var(--primary);
            margin-bottom: 0.5rem;
        }
        
        .stat-label {
            color: var(--text-light);
            font-size: 0.9rem;
        }
        
        /* Features Section */
        .features-section {
            margin-bottom: 2.5rem;
        }
        
        .section-title {
            font-size: 1.75rem;
            margin-bottom: 1.5rem;
            color: var(--primary-dark);
            position: relative;
            padding-bottom: 0.75rem;
        }
        
        .section-title::after {
            content: '';
            position: absolute;
            bottom: 0;
            left: 0;
            width: 60px;
            height: 4px;
            background: var(--primary);
            border-radius: 2px;
        }
        
        .features-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
            gap: 1.5rem;
        }
        
        .feature-card {
            background: white;
            border-radius: 12px;
            overflow: hidden;
            box-shadow: var(--card-shadow);
            transition: all 0.3s ease;
            display: flex;
            flex-direction: column;
        }
        
        .feature-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.1);
        }
        
        .card-header {
            background: linear-gradient(135deg, var(--primary), var(--primary-dark));
            color: white;
            padding: 1.5rem;
            text-align: center;
        }
        
        .card-header i {
            font-size: 2.5rem;
            margin-bottom: 1rem;
        }
        
        .card-header h3 {
            font-size: 1.25rem;
            font-weight: 600;
        }
        
        .card-body {
            padding: 1.5rem;
            flex-grow: 1;
        }
        
        .card-body p {
            color: var(--text-light);
            margin-bottom: 1.5rem;
        }
        
        .btn {
            display: inline-block;
            padding: 0.75rem 1.5rem;
            background: var(--primary);
            color: white;
            text-decoration: none;
            border-radius: 6px;
            font-weight: 500;
            transition: all 0.3s ease;
            border: none;
            cursor: pointer;
            text-align: center;
        }
        
        .btn:hover {
            background: var(--primary-dark);
            transform: translateY(-2px);
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

		/* Responsive Design */
        @media (max-width: 768px) {
            .header-container {
                flex-direction: column;
                gap: 1rem;
            }
            
            .stats-container {
                flex-wrap: wrap;
            }
            
            .welcome-section {
                padding: 1.5rem;
            }
        }
        
        @media (max-width: 480px) {
            .nav-links {
                flex-wrap: wrap;
                justify-content: center;
            }
            
            .feature-card {
                margin-bottom: 1.5rem;
            }
        }
    </style>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	
    <!-- Main Content -->
    <main>
        <section class="welcome-section">
            <h2>欢迎使用职工管理系统</h2>
            <p>高效、便捷的职工管理平台，提供考勤管理、请假审批、工资结算等一站式服务，助力企业高效管理人力资源。</p>
            
            <div class="stats-container">
                <div class="stat-card">
                    <div class="stat-value">1,258</div>
                    <div class="stat-label">在职职工</div>
                </div>
                <div class="stat-card">
                    <div class="stat-value">96%</div>
                    <div class="stat-label">本月出勤率</div>
                </div>
                <div class="stat-card">
                    <div class="stat-value">32</div>
                    <div class="stat-label">待处理申请</div>
                </div>
                <div class="stat-card">
                    <div class="stat-value">15</div>
                    <div class="stat-label">部门数量</div>
                </div>
            </div>
        </section>
        
        <section class="features-section">
            <h2 class="section-title">核心功能</h2>
            
            <div class="features-grid">
                <!-- 考勤管理 -->
                <div class="feature-card">
                    <div class="card-header">
                        <i class="fas fa-calendar-check"></i>
                        <h3>考勤管理</h3>
                    </div>
                    <div class="card-body">
                        <p>记录员工每日考勤情况，支持打卡管理、缺勤标记，生成考勤统计报表。</p>
                        <a href="#" class="btn">进入考勤</a>
                    </div>
                </div>
                
                <!-- 请假/销假 -->
                <div class="feature-card">
                    <div class="card-header">
                        <i class="fas fa-file-medical"></i>
                        <h3>请假/销假</h3>
                    </div>
                    <div class="card-body">
                        <p>在线提交请假申请，审批流程透明化，销假自动记录，请假历史一目了然。</p>
                        <a href="#" class="btn">申请请假</a>
                    </div>
                </div>
                
                <!-- 规章制度 -->
                <div class="feature-card">
                    <div class="card-header">
                        <i class="fas fa-book"></i>
                        <h3>规章制度</h3>
                    </div>
                    <div class="card-body">
                        <p>企业规章制度电子化，方便员工随时查阅，支持分类管理和关键词搜索。</p>
                        <a href="#" class="btn">查看制度</a>
                    </div>
                </div>
                
                <!-- 通知公告 -->
                <div class="feature-card">
                    <div class="card-header">
                        <i class="fas fa-bullhorn"></i>
                        <h3>通知公告</h3>
                    </div>
                    <div class="card-body">
                        <p>发布企业最新通知公告，支持定向推送，阅读状态跟踪，确保信息及时送达。</p>
                        <a href="#" class="btn">查看通知</a>
                    </div>
                </div>
            </div>
        </section>
    </main>
    
    <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
