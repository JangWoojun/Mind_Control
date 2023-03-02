import UIKit
import Gifu

class MainView: UIView {
    
    let gifImageView = GIFImageView(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
    
    let view: UIView = {
        let v = UIView()
        v.backgroundColor = .systemGray2
        
        return v
    }()
    
    let saiminLabel: UILabel = {
        let tv = UILabel()
        tv.font = .boldSystemFont(ofSize: 32)
        tv.textColor = .white
        tv.text = "최면 진행도"
        
        return tv
    }()
    
    let saiminprogress: UIProgressView = {
        let ps = UIProgressView()
        ps.progressViewStyle = .default
        ps.progressTintColor = .systemPink
        ps.trackTintColor = .darkGray
        ps.progress = 0.0
        ps.clipsToBounds = true
        ps.layer.cornerRadius = 8
        ps.clipsToBounds = true
        ps.layer.sublayers![1].cornerRadius = 8
        ps.subviews[1].clipsToBounds = true
        
        return ps
    }()
    
    lazy var saiminStackView: UIStackView = {
        let st = UIStackView(arrangedSubviews: [saiminLabel, saiminprogress])
        st.spacing = 10
        st.axis = .vertical
        st.distribution = .equalSpacing
        st.alignment = .fill

        return st
    }()
    
    let progressLabel: UILabel = {
        let tv = UILabel()
        tv.font = .boldSystemFont(ofSize: 32)
        tv.textColor = .white
        tv.text = "감도"
        
        return tv
    }()
    
    let slider: UISlider = {
        let sd = UISlider()
        sd.setValue(0.0, animated: true)
        sd.tintColor = .systemPink
        
        return sd
    }()
    
    lazy var progressStackView: UIStackView = {
        let st = UIStackView(arrangedSubviews: [progressLabel, slider])
        st.spacing = 5
        st.axis = .vertical
        st.distribution = .equalSpacing
        st.alignment = .fill

        return st
    }()
    
    
    lazy var stackView: UIStackView = {
        let st = UIStackView(arrangedSubviews: [saiminStackView, progressStackView])
        st.spacing = 20
        st.axis = .vertical
        st.distribution = .equalSpacing
        st.alignment = .fill

        return st
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .black
        
        gifImageView.animate(withGIFNamed: "sample", animationBlock:  {
            print("It's animating!")
        })
        
        self.addSubview(gifImageView)
        self.addSubview(view)
        self.addSubview(stackView)
        gifImageView.translatesAutoresizingMaskIntoConstraints = false
        gifImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0).isActive = true
        gifImageView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 0).isActive = true
        gifImageView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 0).isActive = true
        gifImageView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -300).isActive = true
        
        view.translatesAutoresizingMaskIntoConstraints = false
        view.topAnchor.constraint(equalTo: gifImageView.bottomAnchor, constant: 0).isActive = true
        view.heightAnchor.constraint(equalToConstant: 3).isActive = true
        view.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0).isActive = true
        view.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 0).isActive = true
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.topAnchor.constraint(equalTo: view.bottomAnchor, constant: 20).isActive = true
        stackView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10).isActive = true
        stackView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10).isActive = true
        
        saiminprogress.translatesAutoresizingMaskIntoConstraints = false
        saiminprogress.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        slider.translatesAutoresizingMaskIntoConstraints = false
        slider.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
