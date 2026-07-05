import 'package:flutter/material.dart';

void main() {
  runApp(const MediaEthicsApp());
}

class MediaEthicsApp extends StatelessWidget {
  const MediaEthicsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'මාධ්‍ය ආචාර ධර්ම',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
        fontFamily: 'Iskoola Pota', // Good default for Sinhala if available, otherwise default falls back
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('මාධ්‍ය සඳහා ආචාර ධර්ම හා මාර්ගෝපදේශ'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'මාධ්‍ය සඳහා ආචාර ධර්ම හා මාර්ගෝපදේශ පැවතිය යුතුද?',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              const Text(
                'ඔව්, මාධ්‍ය සඳහා ආචාර ධර්ම සහ මාර්ගෝපදේශ පැවතීම අනිවාර්ය වේ. ජනමාධ්‍ය යනු සමාජයේ සිව්වන කුළුණ ලෙස සැලකෙන අතර, එය ජනතාවට තොරතුරු ලබාදීම, දැනුවත් කිරීම සහ මත හැඩගැස්වීම සඳහා සෘජු දායකත්වයක් සපයයි. ආචාර ධර්ම මගින් මාධ්‍යවේදීන්ගේ වගකීම, සත්‍යතාව සහ අපක්ෂපාතීත්වය තහවුරු කරයි.',
                style: TextStyle(fontSize: 16, height: 1.5),
              ),
              const SizedBox(height: 24),
              _buildSectionCard(
                context,
                title: '1. පුවත්පත් ආචාර ධර්ම',
                icon: Icons.newspaper,
                content: 'පුවත්පත් මාධ්‍යයෙහි මූලිකම ආචාර ධර්මය වන්නේ සත්‍යය සහ නිරවද්‍යතාවයයි. වාර්තාකරණයේදී පුද්ගලිකත්වයට ගරු කිරීම, අපහාස කිරීමෙන් වැළකීම සහ වෛරී ප්‍රකාශන ප්‍රචාරය නොකිරීම වැදගත් වේ. පුවත්පත් පැමිණිලි කොමිසම වැනි ආයතන හරහා මෙරට පුවත්පත් කලාවේ ආචාර ධර්ම නියාමනය කෙරේ.',
              ),
              const SizedBox(height: 16),
              _buildSectionCard(
                context,
                title: '2. රූපවාහිනී ආචාර ධර්ම',
                icon: Icons.tv,
                content: 'රූපවාහිනිය දෘශ්‍ය මාධ්‍යයක් බැවින් එහි බලපෑම ඉතා ප්‍රබලය. ළමයින්ට සහ සංවේදී පුද්ගලයින්ට හානිදායක විය හැකි දර්ශන (උදා: ප්‍රචණ්ඩත්වය, ලේ වැගිරීම්) විකාශනය කිරීම සීමා කළ යුතුය. අපක්ෂපාතී පුවත් වාර්තාකරණය සහ සමාජ වගකීමෙන් යුතුව වැඩසටහන් සම්පාදනය රූපවාහිනී මාධ්‍යයට අත්‍යවශ්‍ය වේ.',
              ),
              const SizedBox(height: 16),
              _buildSectionCard(
                context,
                title: '3. නව මාධ්‍ය (New Media) ආචාර ධර්ම',
                icon: Icons.public,
                content: 'අන්තර්ජාලය සහ සමාජ මාධ්‍ය බිහිවීමත් සමග නව මාධ්‍ය වේගවත්ව ව්‍යාප්ත වී ඇත. මෙහිදී සාවද්‍ය තොරතුරු (Fake News) පැතිරීම වැළැක්වීම ප්‍රධාන අභියෝගයකි. සයිබර් හිරිහැර (Cyberbullying) වළක්වා ගැනීම, පුද්ගලික දත්ත සුරක්ෂිතතාව සහ බුද්ධිමය දේපළ අයිතීන්ට ගරු කිරීම නව මාධ්‍ය ආචාර ධර්ම තුළ අන්තර්ගත වේ.',
              ),
              const SizedBox(height: 24),
              const Text(
                'නිගමනය',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Text(
                'මාධ්‍ය නිදහස යනු අසීමිත නිදහසක් නොවේ. එය වගකීම් සහගතව භුක්ති විඳිය යුත්තකි. පුවත්පත්, රූපවාහිනී සහ නව මාධ්‍ය යන කුමන ක්ෂේත්‍රයක වුවද, සමාජයේ යහපැවැත්ම උදෙසා සහ ප්‍රජාතන්ත්‍රවාදය සුරක්ෂිත කිරීම සඳහා ශක්තිමත් ආචාර ධර්ම පද්ධතියක් සහ මාර්ගෝපදේශ පැවතීම අත්‍යවශ්‍ය වේ.',
                style: TextStyle(fontSize: 16, height: 1.5),
              ),
              const SizedBox(height: 32),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSectionCard(BuildContext context, {required String title, required IconData icon, required String content}) {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(icon, color: Theme.of(context).colorScheme.primary),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    title,
                    style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Text(
              content,
              style: const TextStyle(fontSize: 15, height: 1.4),
            ),
          ],
        ),
      ),
    );
  }
}
