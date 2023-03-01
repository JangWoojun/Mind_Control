import UIKit

class StartViewController: UIViewController {

    let startView = StartView()
    
    override func loadView() {
        view = startView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setButton()
    }
    
    func setButton() {
        let tapPlay = UITapGestureRecognizer(target: self, action: #selector(moveMainView))
        startView.playImageView.addGestureRecognizer(tapPlay)
        startView.playImageView.isUserInteractionEnabled = true
        
    }
    
    @objc func moveMainView() {
        let vc = ViewController()
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: false)
    }
}
