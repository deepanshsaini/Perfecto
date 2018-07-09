//
//  PerfectoAlphabetVC.swift
//  Perfecto
//
//  Created by Deepansh Saini on 03/01/18.
//  Copyright © 2018 Ardhendu Shekhar Mishra. All rights reserved.
//

import UIKit
import AVFoundation
import GoogleMobileAds

class PerfectoAlphabetsVC: UIViewController{
    
    var interstitial: GADInterstitial!
    
    @objc let characterArraySound = [String]()
    
    @objc var characterArray = [String]()
    
    @objc var musicPlayer = AVAudioPlayer()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        super.reloadInputViews()
        interstitial = GADInterstitial(adUnitID: "ca-app-pub-1710641957607529/8121602641")
        let request = GADRequest()
        interstitial.load(request)
        interstitial.delegate = self as? GADInterstitialDelegate

    }
    
    @IBAction func aTapped(_ sender: UIButton){
        let path = Bundle.main.path(forResource: "a", ofType: "mp3")
        
        do{
            musicPlayer = try AVAudioPlayer(contentsOf: URL(string: path!)!)
            musicPlayer.prepareToPlay()
            musicPlayer.play()
            
        }catch let err as NSError{
            
            print(err.debugDescription)
            
        }
        
    }
    
    @IBAction func bTapped(_ sender: UIButton){
        let path = Bundle.main.path(forResource: "b", ofType: "mp3")
        
        do{
            musicPlayer = try AVAudioPlayer(contentsOf: URL(string: path!)!)
            musicPlayer.prepareToPlay()
            musicPlayer.play()
            
        }catch let err as NSError{
            
            print(err.debugDescription)
            
        }
        
    }
    
    @IBAction func cTapped(_ sender: UIButton){
        let path = Bundle.main.path(forResource: "c", ofType: "mp3")
        
        do{
            musicPlayer = try AVAudioPlayer(contentsOf: URL(string: path!)!)
            musicPlayer.prepareToPlay()
            musicPlayer.play()
            
        }catch let err as NSError{
            
            print(err.debugDescription)
            
        }
        
    }
    
    @IBAction func dTapped(_ sender: UIButton){
        let path = Bundle.main.path(forResource: "d", ofType: "mp3")
        
        do{
            musicPlayer = try AVAudioPlayer(contentsOf: URL(string: path!)!)
            musicPlayer.prepareToPlay()
            musicPlayer.play()
            
        }catch let err as NSError{
            
            print(err.debugDescription)
            
        }
        
    }
    
    @IBAction func eTapped(_ sender: UIButton){
        let path = Bundle.main.path(forResource: "e", ofType: "mp3")
        
        do{
            musicPlayer = try AVAudioPlayer(contentsOf: URL(string: path!)!)
            musicPlayer.prepareToPlay()
            musicPlayer.play()
            
        }catch let err as NSError{
            
            print(err.debugDescription)
            
        }
        
    }
    
    
    @IBAction func FTapped(_ sender: UIButton){
        let path = Bundle.main.path(forResource: "f", ofType: "mp3")
        
        do{
            musicPlayer = try AVAudioPlayer(contentsOf: URL(string: path!)!)
            musicPlayer.prepareToPlay()
            musicPlayer.play()
            
        }catch let err as NSError{
            
            print(err.debugDescription)
            
        }
        
    }
    
    @IBAction func gTapped(_ sender: UIButton){
        let path = Bundle.main.path(forResource: "g", ofType: "mp3")
        
        do{
            musicPlayer = try AVAudioPlayer(contentsOf: URL(string: path!)!)
            musicPlayer.prepareToPlay()
            musicPlayer.play()
            
        }catch let err as NSError{
            
            print(err.debugDescription)
            
        }
        
    }
    
    @IBAction func hTapped(_ sender: UIButton){
        let path = Bundle.main.path(forResource: "h", ofType: "mp3")
        
        do{
            musicPlayer = try AVAudioPlayer(contentsOf: URL(string: path!)!)
            musicPlayer.prepareToPlay()
            musicPlayer.play()
            
        }catch let err as NSError{
            
            print(err.debugDescription)
            
        }
        
    }
    
    @IBAction func iTapped(_ sender: UIButton){
        let path = Bundle.main.path(forResource: "i", ofType: "mp3")
        
        do{
            musicPlayer = try AVAudioPlayer(contentsOf: URL(string: path!)!)
            musicPlayer.prepareToPlay()
            musicPlayer.play()
            
        }catch let err as NSError{
            
            print(err.debugDescription)
            
        }
        
    }
    
    @IBAction func jTapped(_ sender: UIButton){
        let path = Bundle.main.path(forResource: "j", ofType: "mp3")
        
        do{
            musicPlayer = try AVAudioPlayer(contentsOf: URL(string: path!)!)
            musicPlayer.prepareToPlay()
            musicPlayer.play()
            
        }catch let err as NSError{
            
            print(err.debugDescription)
            
        }
        
    }
    
    @IBAction func kTapped(_ sender: UIButton){
        let path = Bundle.main.path(forResource: "k", ofType: "mp3")
        
        do{
            musicPlayer = try AVAudioPlayer(contentsOf: URL(string: path!)!)
            musicPlayer.prepareToPlay()
            musicPlayer.play()
            
        }catch let err as NSError{
            
            print(err.debugDescription)
            
        }
        
    }
    
    @IBAction func lTapped(_ sender: UIButton){
        let path = Bundle.main.path(forResource: "l", ofType: "mp3")
        
        do{
            musicPlayer = try AVAudioPlayer(contentsOf: URL(string: path!)!)
            musicPlayer.prepareToPlay()
            musicPlayer.play()
            
        }catch let err as NSError{
            
            print(err.debugDescription)
            
        }
        
    }
    
    @IBAction func mTapped(_ sender: UIButton){
        let path = Bundle.main.path(forResource: "m", ofType: "mp3")
        
        do{
            musicPlayer = try AVAudioPlayer(contentsOf: URL(string: path!)!)
            musicPlayer.prepareToPlay()
            musicPlayer.play()
            
        }catch let err as NSError{
            
            print(err.debugDescription)
            
        }
        
    }
    
    @IBAction func nTapped(_ sender: UIButton){
        let path = Bundle.main.path(forResource: "n", ofType: "mp3")
        
        do{
            musicPlayer = try AVAudioPlayer(contentsOf: URL(string: path!)!)
            musicPlayer.prepareToPlay()
            musicPlayer.play()
            
        }catch let err as NSError{
            
            print(err.debugDescription)
            
        }
        
    }
    
    @IBAction func oTapped(_ sender: UIButton){
        let path = Bundle.main.path(forResource: "o", ofType: "mp3")
        
        do{
            musicPlayer = try AVAudioPlayer(contentsOf: URL(string: path!)!)
            musicPlayer.prepareToPlay()
            musicPlayer.play()
            
        }catch let err as NSError{
            
            print(err.debugDescription)
            
        }
        
    }
    
    @IBAction func pTapped(_ sender: UIButton){
        let path = Bundle.main.path(forResource: "p", ofType: "mp3")
        
        do{
            musicPlayer = try AVAudioPlayer(contentsOf: URL(string: path!)!)
            musicPlayer.prepareToPlay()
            musicPlayer.play()
            
        }catch let err as NSError{
            
            print(err.debugDescription)
            
        }
        
    }
    
    @IBAction func qTapped(_ sender: UIButton){
        let path = Bundle.main.path(forResource: "q", ofType: "mp3")
        
        do{
            musicPlayer = try AVAudioPlayer(contentsOf: URL(string: path!)!)
            musicPlayer.prepareToPlay()
            musicPlayer.play()
            
        }catch let err as NSError{
            
            print(err.debugDescription)
            
        }
        
    }
    
    @IBAction func rTapped(_ sender: UIButton){
        let path = Bundle.main.path(forResource: "r", ofType: "mp3")
        
        do{
            musicPlayer = try AVAudioPlayer(contentsOf: URL(string: path!)!)
            musicPlayer.prepareToPlay()
            musicPlayer.play()
            
        }catch let err as NSError{
            
            print(err.debugDescription)
            
        }
        
    }
    
    @IBAction func sTapped(_ sender: UIButton){
        let path = Bundle.main.path(forResource: "s", ofType: "mp3")
        
        do{
            musicPlayer = try AVAudioPlayer(contentsOf: URL(string: path!)!)
            musicPlayer.prepareToPlay()
            musicPlayer.play()
            
        }catch let err as NSError{
            
            print(err.debugDescription)
            
        }
        
    }
    @IBAction func tTapped(_ sender: UIButton){
        let path = Bundle.main.path(forResource: "t", ofType: "mp3")
        
        do{
            musicPlayer = try AVAudioPlayer(contentsOf: URL(string: path!)!)
            musicPlayer.prepareToPlay()
            musicPlayer.play()
            
        }catch let err as NSError{
            
            print(err.debugDescription)
            
        }
        
    }
    
    @IBAction func uTapped(_ sender: UIButton){
        let path = Bundle.main.path(forResource: "u", ofType: "mp3")
        
        do{
            musicPlayer = try AVAudioPlayer(contentsOf: URL(string: path!)!)
            musicPlayer.prepareToPlay()
            musicPlayer.play()
            
        }catch let err as NSError{
            
            print(err.debugDescription)
            
        }
        
    }
    
    @IBAction func vTapped(_ sender: UIButton){
        let path = Bundle.main.path(forResource: "v", ofType: "mp3")
        
        do{
            musicPlayer = try AVAudioPlayer(contentsOf: URL(string: path!)!)
            musicPlayer.prepareToPlay()
            musicPlayer.play()
            
        }catch let err as NSError{
            
            print(err.debugDescription)
            
        }
        
    }
    
    @IBAction func wTapped(_ sender: UIButton){
        let path = Bundle.main.path(forResource: "w", ofType: "mp3")
        
        do{
            musicPlayer = try AVAudioPlayer(contentsOf: URL(string: path!)!)
            musicPlayer.prepareToPlay()
            musicPlayer.play()
            
        }catch let err as NSError{
            
            print(err.debugDescription)
            
        }
        
    }
    
    @IBAction func xTapped(_ sender: UIButton){
        let path = Bundle.main.path(forResource: "x", ofType: "mp3")
        
        do{
            musicPlayer = try AVAudioPlayer(contentsOf: URL(string: path!)!)
            musicPlayer.prepareToPlay()
            musicPlayer.play()
            
        }catch let err as NSError{
            
            print(err.debugDescription)
            
        }
        
    }
    
    @IBAction func yTapped(_ sender: UIButton){
        let path = Bundle.main.path(forResource: "y", ofType: "mp3")
        
        do{
            musicPlayer = try AVAudioPlayer(contentsOf: URL(string: path!)!)
            musicPlayer.prepareToPlay()
            musicPlayer.play()
            
        }catch let err as NSError{
            
            print(err.debugDescription)
            
        }
        
    }
    
    @IBAction func zTapped(_ sender: UIButton){
        let path = Bundle.main.path(forResource: "z", ofType: "mp3")
        
        do{
            musicPlayer = try AVAudioPlayer(contentsOf: URL(string: path!)!)
            musicPlayer.prepareToPlay()
            musicPlayer.play()
            
        }catch let err as NSError{
            
            print(err.debugDescription)
            
        }
        
    }
    
    
    @IBAction func backBtnPressed(_ sender: Any) {
        if interstitial.isReady {
            interstitial.present(fromRootViewController: self)
        } else {
            print("Ad wasn't ready")
        }
        dismiss(animated: true, completion: nil)
    }
    
    /// Tells the delegate an ad request succeeded.
    func interstitialDidReceiveAd(_ ad: GADInterstitial) {
        print("interstitialDidReceiveAd")
    }
    
    /// Tells the delegate an ad request failed.
    func interstitial(_ ad: GADInterstitial, didFailToReceiveAdWithError error: GADRequestError) {
        print("interstitial:didFailToReceiveAdWithError: \(error.localizedDescription)")
    }
    
    /// Tells the delegate that an interstitial will be presented.
    func interstitialWillPresentScreen(_ ad: GADInterstitial) {
        print("interstitialWillPresentScreen")
    }
    
    /// Tells the delegate the interstitial is to be animated off the screen.
    func interstitialWillDismissScreen(_ ad: GADInterstitial) {
        print("interstitialWillDismissScreen")
    }
    
    /// Tells the delegate the interstitial had been animated off the screen.
    func interstitialDidDismissScreen(_ ad: GADInterstitial) {
        print("interstitialDidDismissScreen")
    }
    
    /// Tells the delegate that a user click will open another app
    /// (such as the App Store), backgrounding the current app.
    func interstitialWillLeaveApplication(_ ad: GADInterstitial) {
        print("interstitialWillLeaveApplication")
    }
    
    
}

