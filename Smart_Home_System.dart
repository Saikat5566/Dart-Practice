// Enum:
// DeviceType → Light, Fan, AC
// ConnectionType → Wired, Wireless

enum DeviceType {Light, Fan, AC}
enum ConnectionType {Wired, Wireless}

// Abstract Class:
// Device নামে abstract class
// Private property _name
// Constructor দিয়ে _name set হবে
// Abstract method: status()

abstract class Device{
  String _name;

  Device(this._name);

  void status();
}

// Interface: Controllable → method: turnOn(), turnOff()

abstract class Controllable{
  void turnOn();

  void turnOff();
}

// Inheritance & Polymorphism:
// SmartDevice class Device extend করবে এবং Controllable implement করবে
// Properties: type (DeviceType), _power (private, integer 0 বা 1)
// Getter/Setter দিয়ে _power access করতে হবে
// status() method override করবে
// turnOn(), turnOff() implement করবে

class SmartDevice extends Device implements Controllable{
  DeviceType type;
  int _power;

  SmartDevice(String name, this.type, [this._power = 1]): super (name);

  int get power => _power;
  set power(int value) {
    if (value == 0 || value == 1) _power = value;
  }

  @override
  void status() {
    print(
        "Device: $_name, Type: ${type.name}, Power: ${_power == 1 ? 'ON' : 'OFF'}");
  }

  @override
  void turnOn() => _power = 1;

  @override
  void turnOff() => _power = 0;
}


// Mixin:
// VoiceControl mixin → method: voiceCommand(String command)
// SmartDevice এর একটি subclass VoiceDevice এই mixin ব্যবহার করবে

mixin VoiceControl {
  void voiceCommand(String command){
    print("Device on");
  }
}

class VoiceDevice extends SmartDevice with VoiceControl{
  bool voiceEnabled;

  VoiceDevice(String name, int power, DeviceType type, this.voiceEnabled): super (name, type);

  @override
  void status() {
    // TODO: implement status
    super.status();
    print("Voice Enabled ${voiceEnabled?"YES" : "NO"} ");
  }
}

// Main Function:
// ২টি SmartDevice object (Light, Fan) এবং ১টি VoiceDevice object (AC) তৈরি করো
// সব devices এর status() call করো
// VoiceDevice এ voiceCommand() call করো

void main(){
  SmartDevice Light = SmartDevice("Living room Light", DeviceType.Light);
  Light.status();
  Light.turnOn();
  Light.turnOff();

  SmartDevice Fan = SmartDevice("Living room Fan", DeviceType.Fan);
  Fan.status();
  Fan.turnOn();
  Fan.turnOff();

  VoiceDevice AC = VoiceDevice("Living room AC", 0 , DeviceType.AC, true);
  AC.status();
  AC.turnOn();
  AC.turnOff();

}