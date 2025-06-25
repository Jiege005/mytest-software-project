<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
            --sidebar-width: 260px;
        }
        
        body {
            background-color: #f8f9fa;
            color: var(--text);
            line-height: 1.6;
            display: flex;
            min-height: 100vh;
        }
        
        /* 侧边栏样式 */
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
        
        /* 主内容区域 */
        .main-content {
            flex: 1;
            margin-left: var(--sidebar-width);
            padding: 2rem;
        }
        
        /* 顶部导航栏 */
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
        
        /* 模块标题 */
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
        
        /* 卡片容器 */
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
        
        /* 表格样式 */
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
        
        /* 按钮样式 */
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
        
        /* 表单样式 */
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
        
        /* 统计卡片 */
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
        
        /* 操作按钮组 */
        .action-buttons {
            display: flex;
            gap: 0.5rem;
        }
        
        /* 标签样式 */
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
        
        /* 响应式设计 */
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
    </style>
</head>
<body>

</body>
</html>