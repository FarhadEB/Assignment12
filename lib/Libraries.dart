
//The Library Details
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:chewie/chewie.dart';
import 'package:video_player/video_player.dart';
import 'package:shamsi_date/shamsi_date.dart';
import 'package:english_words/english_words.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:digit_to_persian_word/digit_to_persian_word.dart';
import 'package:fluttertoast/fluttertoast.dart';


class AudioPlayer extends StatelessWidget {
  const AudioPlayer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('AudioPlayer'),
          backgroundColor: Colors.pink,
        ),
        body: Column(
          children: [
            Text('''
            کتابخانه ` برای پخش فایل‌های صوتی در اپلیکیشن‌های  استفاده می‌شود. این کتابخانه به شما امکان می‌دهد تا به سادگی صوت را بارگذاری، پخش، متوقف و کنترل کنید. آن شما را قادر می‌سازد تا از تابع‌هایی مانند پخش در پس‌زمینه و مدیریت حالت پخش استفاده کنید.

        **ویژگی‌ها:**
          - پشتیبانی از پخش صدا از URL و فایل‌های محلی.
          - مدیریت وضعیت پخش (پخش، توقف، مکث و ...).
          - پشتیبانی از حالت‌های مختلف پخش.

          '''),
            Text('Click button to see'),
            SizedBox(
              height: 20,
            ),
            MaterialButton(
              onPressed: () {
                final player = AudioPlayer();
                player.play(UrlSource('note1.wav'));
              },
              color: Colors.red,
              child: Text('Clich It'),
            )
          ],
        ));
  }
}

class videoPlayer extends StatefulWidget {
  @override
  _MyVideoPlayerState createState() => _MyVideoPlayerState();
}

class _MyVideoPlayerState extends State<videoPlayer> {
  late VideoPlayerController _videoPlayerController;
  late ChewieController _chewieController;

  @override
  void initState() {
    super.initState();

    _videoPlayerController =
        VideoPlayerController.asset('assets/videos/nature.mp4');
    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController,
      autoPlay: true,
      looping: true,
    );
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    _chewieController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Chewie(
      controller: _chewieController,
    );
  }
}

class fontAwesome extends StatelessWidget {
  const fontAwesome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Font Awesome'),
        backgroundColor: Colors.pink,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
              '''تابخانه  به شما این امکان را می‌دهد که از مجموعه‌ای از آیکون‌های محبوب و زیبا در اپلیکیشن‌های Flutter خود استفاده کنید. این آیکون‌ها به سادگی در ویجت‌های Flutter قابل استفاده هستند و طراحی رابط کاربری شما را زیباتر می‌کنند.

**ویژگی‌ها:**
- دسترسی به هزاران آیکون مختلف.
- سفارشی‌سازی رنگ و اندازه آیکون‌ها.
- استفاده آسان در برنامه.
'''),
          FaIcon(
            FontAwesomeIcons.heart,
            size: 100.0,
            color: Colors.red,
          ),
        ],
      ),
    );
  }
}

class Toast extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'Flutter Toast ',
              style: TextStyle(color: Colors.white, fontSize: 40),
            ),
          ),
          backgroundColor: Colors.pink,
        ),
        body: Column(
          children: [
            Text(
                ''' برای نمایش نوارهای اعلان  در اپلیکیشن‌های  استفاده می‌شود. این نوارهای اعلان معمولاً برای نمایش پیام‌های کوتاه و غیر مزاحم به کاربر، مانند موفقیت یا خطا، به کار می‌روند.

**ویژگی‌ها:**
- نمایش پیام‌های سفارشی به صورت غیر مزاحم.
- سفارشی‌سازی زمان نمایش و موقعیت نوار.
- طراحی ساده و کاربرپسند.
'''),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Fluttertoast.showToast(
                    msg: 'This is a Toast Message Mr Farhad!',
                    // toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.BOTTOM,
                  );
                },
                child: Text("Show Toast"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DateConverter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // تاریخ میلادی که می‌خواهیم تبدیل کنیم
    DateTime gregorianDate = DateTime(2024, 11, 28);

    // تبدیل به تاریخ شمسی
    ShamsiDate shamsiDate = ShamsiDate.fromDateTime(gregorianDate);
 
    return Scaffold(
      appBar: AppBar(
        title: Text('تبدیل تاریخ میلادی به شمسی'),
      ),
      body: Center(
        child: Text(
          'تاریخ شمسی: ${shamsiDate.year}/${shamsiDate.month}/${shamsiDate.day}',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}



class EnglishWord extends StatelessWidget {
  const EnglishWord({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('English Word'),
        backgroundColor: Colors.pink,
      ),
      body: Column(
        children: [
          Text(
              '''برای تولید و نمایش کلمات تصادفی و جملات در زبان انگلیسی استفاده می‌شود. این کتابخانه مفید برای برنامه‌های آموزشی، بازی‌های کلمه‌ای و پروژه‌هایی است که به کلمات نیاز دارند.

**ویژگی‌ها:**
- تولید کلمات و عبارات تصادفی.
- قابلیت استفاده در بازی‌ها و برنامه‌های آموزشی.
- پایه‌گذاری بر روی پایگاه داده‌ای از کلمات انگلیسی.'''),
          SizedBox(
            height: 20,
          ),
          Text('A usage of this Package👎'),
          SizedBox(
            height: 20,
          ),
          Text('This is an ex:👉 ${adjectives.last}'),
        ],
      ),
    );
  }
}

class DigitToPersianWord extends StatelessWidget {
  const DigitToPersianWord({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Digit To Persian Word'),
        backgroundColor: Colors.pink,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Text(
              '''ک` برای تبدیل اعداد به کلمات فارسی استفاده می‌شود. این کتابخانه به شما امکان می‌دهد تا اعداد را به راحتی به صورت کلمات فارسی نمایش دهید که برای نمایش مقادیر مالی و دیگر موقعیت‌ها بسیار مفید است.

**ویژگی‌ها:**
- تبدیل اعداد به کلمات فارسی.
- مفید برای نمایش مقادیر مالی و آماری به صورت متن.
- ساده و کاربرپسند.'''),
          //تبدیل رقم به حروف بدون تبدیل اعداد
          Text(DigitToWord.toWord("123456", StrType.NumWord,
              isMoney: true)), // 123 هزارو 456 تومان
          //)تبدیل عدد به حروف همراه با تبدیل اعداد
          Text(
            DigitToWord.toWord("123456", StrType.StrWord),
          ), //صد و بیست و سه هزارو چهارصدو پنجاه و شش
          //تبدیل رقم به حروف
          Text(DigitToWord.toWord("123.456", StrType.NumWord,
              isMoney: true, separator: ".")), // 123 هزارو 456 تومان
          //جدا سازی سه رقمی اعداد به صورت معمول
          Text(
            DigitFormat.convert("123456", separator: ","),
          ), //123,456
          //به جدا سازی سه رقمی اعداد به صورت (TextInputFormatter)
          TextFormField(inputFormatters: [DigitInputFormat()]),
        ],
      ),
    );
  }
}
