# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

## Ruby version
> ruby 3.2.4

> Rails 8.0.1
## Run with docker
> docker-compose build && docker-compose up
## Extended Feature
1. Build a background job processing system for heavy tasks (e.g., sending bulk emails, importing large datasets, processing reports).
- Import: 
  - Sử dụng Gem activerecord-import + Backgroud Job
  - Đối với dữ liệu lớn:
    - Talend studio | Load và dump dần data và dùng SQL theo dạng mảng
- Report:
  - Chia ngắn khoảng thời report theo ngày / tuần / tháng
  - Chỉ nên lấy các trường được yêu cầu
  - Có thể chuyển qua code MacroExcel trên file export để fill thông tin khi mở file, tránh trường hợp sử lý quá nhiều thông tin tại server
2. Implement caching in the application, such as caching results of heavy queries, and fragment caching for complex view pages.
- Query Caching (SQL Query Caching | Rails.cache)
- Sử dụng Redis để lưu trữ thông tin query
3. Integrate a detailed authorization system for users, based on different roles (Admin, User, Guest).
- Gem CanCanCan + devise
- Gem Pundit: Quản lý quyền truy cập dựa trên các policy
4. Set up automatic tasks like sending reminder emails, cleaning up old data, or backing up the database.
- Sử dụng Sidkiq + Queue để sử lý các task
- Whenever, CronJob + Thor | Batch sử lý yêu cầu theo schedule
- AWS: SQS, SES

