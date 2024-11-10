import 'package:flutter/material.dart';

class MarsPage extends StatelessWidget {
  const MarsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('المريخ'),
        backgroundColor: const Color(0xFF3F51B5), // Color for AppBar
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/solaire'); // Navigate to main page
            },
            icon: const Icon(Icons.first_page),
          ),
        ],
      ),
      body: Stack(
        children: [
          // Starry background image
          Positioned.fill(
            child: Image.asset(
              'android/assets/images/etoile.jpg', // Starry background image
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center, // Center content
                children: <Widget>[
                  Image.asset(
                    'android/assets/images/mars.jpg', // Mars image
                    height: 250,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'المريخ',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF3F51B5),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'المريخ هو الكوكب الرابع في النظام الشمسي. '
                    'ويُطلق عليه غالبًا "الكوكب الأحمر" بسبب لونه المميز الذي يرجع إلى وجود الصدأ على سطحه.',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'الخصائص الرئيسية:',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF3F51B5),
                    ),
                  ),
                  const SizedBox(height: 20),

                  // Enhanced table design
                  Table(
                    border: TableBorder.all(color: Colors.white54, width: 1),
                    columnWidths: const {
                      0: FixedColumnWidth(150), // Width of first column
                      1: FlexColumnWidth(), // Second column takes remaining space
                    },
                    children: [
                      _buildTableRow('المسافة من الشمس', '227.9 مليون كم'),
                      _buildTableRow('القطر', '6,779 كم'),
                      _buildTableRow('متوسط درجة الحرارة', '-63°C'),
                      _buildTableRow(
                          'الغلاف الجوي', '95% من ثاني أكسيد الكربون'),
                      _buildTableRow('عدد الأقمار', '2 (فوبوس و ديموس)'),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Function to build a table row with enhanced design
  TableRow _buildTableRow(String title, String value) {
    return TableRow(
      decoration: BoxDecoration(
        color:
            Colors.white.withOpacity(0.1), // Subtle background color for rows
      ),
      children: [
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text(
            title,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text(
            value,
            style: const TextStyle(color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
