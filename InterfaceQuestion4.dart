// Question: Smart Device System
// 👉 এমন একটা প্রোগ্রাম লেখো যেখানে —
// Camera নামে একটা interface থাকবে।
// Method: takePhoto()
// MusicPlayer নামে আরেকটা interface থাকবে।
// Method: playMusic()
// SmartPhone ক্লাস দুইটা interface (Camera + MusicPlayer) implement করবে।
// সাথে অতিরিক্ত method থাকবে: call(String number) → print করবে "Calling $number..."
// main() ফাংশনে:
// একটা SmartPhone অবজেক্ট তৈরি করো।
// তার মাধ্যমে photo তোলা, গান বাজানো এবং ফোন কল করা দেখাও।

abstract class Camera{
  void takePhoto();
}

abstract class MusicPlayer {
  void playMusic();
}

class SmartPhone implements Camera, MusicPlayer{
  
  void call(String number){
    print("Calling Number $number");
  }

  void takePhoto() {
    print("Taking a Photo");
  }

  void playMusic() {
    print("Playing Music");
  }
}

void main(){
  SmartPhone smartPhone = SmartPhone();
  smartPhone.call("01734556637");
  smartPhone.takePhoto();
  smartPhone.playMusic();
}