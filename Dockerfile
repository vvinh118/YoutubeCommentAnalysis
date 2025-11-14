# Sử dụng ảnh nền Python 3.11.9 và bản "slim" (gọn nhẹ)
FROM python:3.11.9-slim

# Đặt thư mục làm việc bên trong container
WORKDIR /app

# Sao chép file requirements vào trước
COPY requirements.txt .

# Cài đặt các thư viện Python
RUN pip install --no-cache-dir -r requirements.txt

# Sao chép toàn bộ mã nguồn còn lại của dự án vào
COPY . .

# Streamlit chạy ở port 8501
EXPOSE 8501

# Lệnh để chạy ứng dụng Streamlit
CMD ["streamlit", "run", "app.py"]