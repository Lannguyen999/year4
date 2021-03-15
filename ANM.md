# An ninh mạng

# Chương 1: Tổng quan về an ninh mạng

## Các kiểu tấn công mạng:

    - Tấn công thụ động: Là việc cố gắng lấy hoặc lợi dụng thông tin hệ thống nhưng không ảnh hưởng đến các tài nguyên hệ thống
    - Tấn công chủ động: Là hành động cố gắng thay đổi các tài nguyên hệ thống hoặc gây ảnh hưởng đến hoạt động của họ

## Các loại tấn công mạng:

    1. Tấn công thụ động:
        - Nghe lén, xem trộm bản tin
        - Phân tích luồng tin
    2. Tấn công chủ động:
        - Mạo danh
        - Phát lại
        - Sửa đổi bản tin
        - Từ chối dịch vụ

# Chương 2

## Mật mã hóa đối xứng và bất đối xứng:

    1. Mật mã hóa đối xứng: mã hóa và giải mã dùng chung 1 khóa
    2. Mật mã hóa bất đối xứng: mã hóa và giải mã sử dụng 2 khóa khác nhau là khóa bí mật và khóa công khai

## Các loại mật mã:

    1. Mật mã khối: Má hóa từng khối, kích thước khối phụ thuộc vào loại mã: 64, 128, ...
    2. Mật mã dòng: Mã hóa từng bit một

## 2 cách tấn công sơ đồ mật mã hóa truyền thống

    1. Cryptanalysis: Lợi dụng các đặc tính của thuật toán để cố gắng suy luận ra bản rõ cụ thể hoặc khóa được sử dụng
    2. Brute-Force: kẻ tấn công thử các khóa có thể lên 1 đoạn bản mã cho tới khi phiên dịch được bản rõ, trung bình phải được thử một nửa số khóa để thành công

## DES: Data Encryption Standard

### Đặc điểm:

    1. Là mã thuộc mã khối Feistel có 16 vòng
    2. Có 1 hoán vị khởi tạo trước khi bắt đầu và 1 hoán vị kết thúc sau 16 vòng
    3. Kích thước khối là 64 bit
    4. Kích thước khóa là 64 bit, trong đó 56 bit được dùng và 8 bit để kiểm tra chẵn lẻ
    5. Bản mã đầu ra là 64 bit
    6. Mỗi vòng của DES dùng khóa con có kích thước là 48 bit được trích ra từ khóa chính.

### Hàm Expand:

    Biến 1 từ mã 32 bit thành 1 từ mã 48 bit bằng cách hoán vị mở rộng theo kiểu 2 bit cuối của hàng này là 2 bit đầu của hàng sau đó.

### Hàm S-boxes:

    Biến đổi 48 bit thành 32 bit. Được chia ra làm  8 hàm S-box con, mỗi hàm S-box biến đổi từ 6 bit về 4 bit theo quy luật bit thứ nhất và bit thứ 6 quy định cho hàng và bit thứ 2,3,4,5 quy định cho cột

### Hàm P-box : Hoán vị 32 bit đầu ra của hàm S-boxes

### Tạo khóa:

    1. Khóa K 64 bit bị biến đổi thành 1 từ 56 bit qua thuật toán PC-1
    2. 56 bit được sử dụng chia làm 2 nửa, mỗi nửa 28 bit
    3. LSi sẽ dịch vòng sang trái:
        1 nhịp nếu i = 1, 2, 9, 16
        2 nhịp với các i còn lại
    4. PC-2 biến mỗi từ mã 56 bit thành từ mã 48 bit

## Hiệu ứng lan truyền

    Chỉ cần 1 thay đổi nhỏ trong bản rõ hay trong khóa sẽ dẫn đến thay đổi lớn trong bản mã
    Kẻ phá mã phải thực hiện tấn công Brute-Force

## AES: Advance Encryption Standard

### Đặc điểm:

    1. Mã mới thay thế cho DES
    2. Không phải là mã Feistel
    3. Kích thước khối là 128 bit
    4. Kích thước khóa : 128, 192 hoặc 256 bit

### Các tham số

    1. SubBytes(): thay thế các byte dữ liệu
    2. ShiftRow(): dịch vòng dữ liệu
    3. MixColumns(): trộn cột dữ liệu vào
    4. AddRoundKey(): Chèn khóa vòng

### Mô hình thuật toán mã hóa và giải mã
