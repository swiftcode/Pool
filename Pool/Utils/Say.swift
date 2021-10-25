import AVFoundation

func say(textToSay: String) {
    let synth = AVSpeechSynthesizer()
    var avSpeech = AVSpeechUtterance(string: "")
    
    avSpeech = AVSpeechUtterance(string: textToSay)
    avSpeech.rate = 0.52
    synth.speak(avSpeech)
}
