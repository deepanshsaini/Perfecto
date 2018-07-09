//
//  PerfectoNumberVC.swift
//  Perfectoo
//
//  Created by Deepansh Saini on 04/09/17.
//  Copyright © 2017 Deepansh Saini. All rights reserved.
//

import UIKit
import AVFoundation
import GoogleMobileAds

class PerfectoNumberVC: UIViewController, UIAlertViewDelegate {

    var interstitial: GADInterstitial!
    
    @objc var musicPlayer =  AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        super.reloadInputViews()
        interstitial = GADInterstitial(adUnitID: "ca-app-pub-1710641957607529/8121602641")
        let request = GADRequest()
        interstitial.load(request)
        interstitial.delegate = self as? GADInterstitialDelegate

    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func zeroTapped(_ sender: UIButton){
        let path = Bundle.main.path(forResource: "0", ofType: "mp3")
        
        do{
            musicPlayer = try AVAudioPlayer(contentsOf: URL(string: path!)!)
            musicPlayer.prepareToPlay()
            musicPlayer.play()
            
        }catch let err as NSError{
            
            print(err.debugDescription)
            
        }
        
    }
    
    @IBAction func oneTapped(_ sender: UIButton){
        let path = Bundle.main.path(forResource: "1", ofType: "mp3")
        
        do{
            musicPlayer = try AVAudioPlayer(contentsOf: URL(string: path!)!)
            musicPlayer.prepareToPlay()
            musicPlayer.play()
            
        }catch let err as NSError{
            
            print(err.debugDescription)
            
        }
        
    }
    
    @IBAction func twoTapped(_ sender: UIButton){
        let path = Bundle.main.path(forResource: "2", ofType: "mp3")
        
        do{
            musicPlayer = try AVAudioPlayer(contentsOf: URL(string: path!)!)
            musicPlayer.prepareToPlay()
            musicPlayer.play()
            
        }catch let err as NSError{
            
            print(err.debugDescription)
            
        }
        
    }
    
    @IBAction func threeTapped(_ sender: UIButton){
        let path = Bundle.main.path(forResource: "3", ofType: "mp3")
        
        do{
            musicPlayer = try AVAudioPlayer(contentsOf: URL(string: path!)!)
            musicPlayer.prepareToPlay()
            musicPlayer.play()
            
        }catch let err as NSError{
            
            print(err.debugDescription)
            
        }
        
    }
    
    @IBAction func fourTapped(_ sender: UIButton){
        let path = Bundle.main.path(forResource: "4", ofType: "mp3")
        
        do{
            musicPlayer = try AVAudioPlayer(contentsOf: URL(string: path!)!)
            musicPlayer.prepareToPlay()
            musicPlayer.play()
            
        }catch let err as NSError{
            
            print(err.debugDescription)
            
        }
        
    }
    
    @IBAction func fiveTapped(_ sender: UIButton){
        let path = Bundle.main.path(forResource: "5", ofType: "mp3")
        
        do{
            musicPlayer = try AVAudioPlayer(contentsOf: URL(string: path!)!)
            musicPlayer.prepareToPlay()
            musicPlayer.play()
            
        }catch let err as NSError{
            
            print(err.debugDescription)
            
        }
        
    }
    
    @IBAction func sixTapped(_ sender: UIButton){
        let path = Bundle.main.path(forResource: "6", ofType: "mp3")
        
        do{
            musicPlayer = try AVAudioPlayer(contentsOf: URL(string: path!)!)
            musicPlayer.prepareToPlay()
            musicPlayer.play()
            
        }catch let err as NSError{
            
            print(err.debugDescription)
            
        }
        
    }
    
    @IBAction func sevenTapped(_ sender: UIButton){
        let path = Bundle.main.path(forResource: "7", ofType: "mp3")
        
        do{
            musicPlayer = try AVAudioPlayer(contentsOf: URL(string: path!)!)
            musicPlayer.prepareToPlay()
            musicPlayer.play()
            
        }catch let err as NSError{
            
            print(err.debugDescription)
            
        }
        
    }
    
    @IBAction func eightTapped(_ sender: UIButton){
        let path = Bundle.main.path(forResource: "8", ofType: "mp3")
        
        do{
            musicPlayer = try AVAudioPlayer(contentsOf: URL(string: path!)!)
            musicPlayer.prepareToPlay()
            musicPlayer.play()
            
        }catch let err as NSError{
            
            print(err.debugDescription)
            
        }
        
    }
    
    @IBAction func nineTapped(_ sender: UIButton){
        let path = Bundle.main.path(forResource: "9", ofType: "mp3")
        
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
