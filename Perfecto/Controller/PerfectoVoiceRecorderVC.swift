//
//  PerfectoVoiceRecorder.swift
//  Perfectoo
//
//  Created by Deepansh Saini on 04/09/17.
//  Copyright © 2017 Deepansh Saini. All rights reserved.
//

import UIKit
import AVFoundation

class PerfectoVoiceRecorderVC: UIViewController, AVAudioPlayerDelegate, AVAudioRecorderDelegate {
    
    @IBOutlet weak var record: UILabel!
    @IBOutlet weak var pause: UILabel!
    
    @IBOutlet weak var momentOfTruth: UIButton!
    @IBOutlet weak var recordButton: UIButton!
    @IBOutlet weak var stopButton: UIButton!
    @IBOutlet weak var playButton: UIButton!
    
    @objc var audioPlayer: AVAudioPlayer?
    @objc var audioRecorder: AVAudioRecorder?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        super.reloadInputViews()
        
        //playButton.isEnabled = false
        stopButton.isEnabled = false
        stopButton.isHidden = true
        momentOfTruth.isHidden = true
        pause.isHidden = true
        
        let fileMgr = FileManager.default
        
        let dirPaths = fileMgr.urls(for: .documentDirectory,
                                    in: .userDomainMask)
        
        let soundFileURL = dirPaths[0].appendingPathComponent("sound.caf")
        
        let recordSettings =
            [AVEncoderAudioQualityKey: AVAudioQuality.min.rawValue,
             AVEncoderBitRateKey: 16,
             AVNumberOfChannelsKey: 2,
             AVSampleRateKey: 44100.0] as [String : Any]
        
        let audioSession = AVAudioSession.sharedInstance()
        
        do {
            try audioSession.setCategory(
                AVAudioSessionCategoryPlayAndRecord)
        } catch let error as NSError {
            print("audioSession error: \(error.localizedDescription)")
        }
        
        do {
            try audioRecorder = AVAudioRecorder(url: soundFileURL,
                                                settings: recordSettings as [String : AnyObject])
            audioRecorder?.prepareToRecord()
        } catch let error as NSError {
            print("audioSession error: \(error.localizedDescription)")
        }
    }
    
    @IBAction func recordAudio(_ sender: AnyObject) {
        if audioRecorder?.isRecording == false {
            //playButton.isEnabled = false
            stopButton.isEnabled = true
            recordButton.isHidden = true
            record.isHidden = true
            audioRecorder?.record()
            
            stopButton.isHidden = false
            pause.isHidden = false
        }
    }
    
    @IBAction func stopAudio(_ sender: AnyObject) {
        stopButton.isEnabled = false
        //playButton.isEnabled = true
        recordButton.isEnabled = true
        
        if audioRecorder?.isRecording == true {
            audioRecorder?.stop()
        } else {
            audioPlayer?.stop()
        }
        recordButton.isHidden = true
        stopButton.isHidden = true
        pause.isHidden = true
        momentOfTruth.isHidden = false
        momentOfTruth.isOpaque = true
        
    }
    
    // play the audio will use in future updates
    //        @IBAction func playAudio(_ sender: AnyObject) {
    //            if audioRecorder?.isRecording == false {
    //                stopButton.isEnabled = true
    //                recordButton.isEnabled = false
    //
    //                do {
    //                    try audioPlayer = AVAudioPlayer(contentsOf:
    //                        (audioRecorder?.url)!)
    //                    audioPlayer!.delegate = self
    //                    audioPlayer!.prepareToPlay()
    //                    audioPlayer!.play()
    //                } catch let error as NSError {
    //                    print("audioPlayer error: \(error.localizedDescription)")
    //                }
    //            }
    //        }
    
    func audioPlayerDidFinishPlaying(_ player: AVAudioPlayer, successfully flag: Bool) {
        recordButton.isEnabled = true
        stopButton.isEnabled = false
    }
    
    func audioPlayerDecodeErrorDidOccur(_ player: AVAudioPlayer, error: Error?) {
        print("Audio Play Decode Error")
    }
    
    func audioRecorderDidFinishRecording(_ recorder: AVAudioRecorder, successfully flag: Bool) {
    }
    
    func audioRecorderEncodeErrorDidOccur(_ recorder: AVAudioRecorder, error: Error?) {
        print("Audio Record Encode Error")
    }
    
    @IBAction func backBtnPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? PerfectoVoiceAnalyserVC {
            destination.url = audioRecorder?.url
        }
    }
    
    
    
}

