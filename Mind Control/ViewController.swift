import UIKit

class ViewController: UIViewController {
    
    weak var timer: Timer?
    var time = 0.0
    
    let mainView = MainView()
    
    override func loadView() {
        view = mainView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        timer?.invalidate()
        timer = Timer.scheduledTimer(withTimeInterval: 0.01, repeats: true, block: { [self] _ in
            if time == 1.0 {
                timer?.invalidate()
            } else {
                time += 0.001
                mainView.saiminprogress.setProgress(Float(time), animated: true)
            }
        })
    }


}

