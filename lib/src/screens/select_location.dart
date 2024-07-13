import 'package:flutter/material.dart';
import 'package:groceries_app/src/widget/button_reponsive.dart';

class SelectLocation extends StatefulWidget {
  const SelectLocation({super.key});

  @override
  _SelectLocationState createState() => _SelectLocationState();
}

class _SelectLocationState extends State<SelectLocation> {
  String? selectedOption;

  List<String> provincesVietnam = [
    'An Giang',
    'Bà Rịa - Vũng Tàu',
    'Bạc Liêu',
    'Bắc Giang',
    'Bắc Kạn',
    'Bắc Ninh',
    'Bến Tre',
    'Bình Định',
    'Bình Dương',
    'Bình Phước',
    'Bình Thuận',
    'Cà Mau',
    'Cao Bằng',
    'Đắk Lắk',
    'Đắk Nông',
    'Điện Biên',
    'Đồng Nai',
    'Đồng Tháp',
    'Gia Lai',
    'Hà Giang',
    'Hà Nam',
    'Hà Tĩnh',
    'Hải Dương',
    'Hậu Giang',
    'Hòa Bình',
    'Hưng Yên',
    'Khánh Hòa',
    'Kiên Giang',
    'Kon Tum',
    'Lai Châu',
    'Lâm Đồng',
    'Lạng Sơn',
    'Lào Cai',
    'Long An',
    'Nam Định',
    'Nghệ An',
    'Ninh Bình',
    'Ninh Thuận',
    'Phú Thọ',
    'Quảng Bình',
    'Quảng Nam',
    'Quảng Ngãi',
    'Quảng Ninh',
    'Quảng Trị',
    'Sóc Trăng',
    'Sơn La',
    'Tây Ninh',
    'Thái Bình',
    'Thái Nguyên',
    'Thanh Hóa',
    'Thừa Thiên Huế',
    'Tiền Giang',
    'Trà Vinh',
    'Tuyên Quang',
    'Vĩnh Long',
    'Vĩnh Phúc',
    'Yên Bái',
    'Phú Yên',
    'Cần Thơ',
    'Đà Nẵng',
    'Hải Phòng',
    'Hà Nội',
    'Hồ Chí Minh'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/backgroud_login.png'),
                fit: BoxFit.cover,
              ),
              color: Colors.white,
            ),
          ),
          SafeArea(
            child: Column(
              children: <Widget>[
                AppBar(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  iconTheme: const IconThemeData(color: Colors.black),
                  leading: IconButton(
                    icon: const Icon(Icons.arrow_back_ios_rounded),
                    onPressed: () {
                      // Your code here
                    },
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        const Image(
                          image: AssetImage('assets/images/illustration.png'),
                        ),
                        const SizedBox(height: 30),
                        const SizedBox(
                          width: 350,
                          child: Column(
                            children: [
                              Text(
                                'Select Your Location',
                                style: TextStyle(
                                  fontSize: 26,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                'Swithch on your location to stay in tune with\nwhat’s happening in your area',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF7C7C7C),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 100,
                        ),
                        DropdownButtonFormField<String>(
                          value: selectedOption,
                          onChanged: (String? newValue) {
                            setState(() {
                              selectedOption = newValue;
                            });
                          },
                          items: provincesVietnam.map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          decoration: const InputDecoration(
                            labelText: 'Your Zone',
                            filled: true,
                          ),
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        DropdownButtonFormField<String>(
                          value: selectedOption,
                          onChanged: (String? newValue) {
                            setState(() {
                              selectedOption = newValue;
                            });
                          },
                          items: provincesVietnam.map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          decoration: const InputDecoration(
                            labelText: 'Your Area',
                          ),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        TextButton(
                          style: ButtonStyle(
                            minimumSize: WidgetStateProperty.all(
                              const Size(double.infinity, 10),
                            ), // Đặt chiều rộng tối thiểu và chiều cao của nút
                          ),
                          onPressed: () {
                            // Xử lý khi nút được nhấn
                          },
                          child: ReposiveButton(
                            text: 'Submit',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
