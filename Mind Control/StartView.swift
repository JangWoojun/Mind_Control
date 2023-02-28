import UIKit

class StartView: UIView {
    
    let mainLabel: UILabel = {
        let tv = UILabel()
        tv.font = .boldSystemFont(ofSize: 80)
        tv.textColor = .white
        tv.text = "絶対 催眠"
        
        return tv
    }()
    
    lazy var imageBackgroundView: UIView = {
        let view = UIView()
        view.addSubview(mainImageView)
        view.backgroundColor = .white
        view.layer.cornerRadius = 30
        return view
    }()
    
    let mainImageView: UIImageView = {
        let img = UIImageView()
        img.image = #imageLiteral(resourceName: "eye2")
        return img
    }()

    let settingImageView: UIImageView = {
        let img = UIImageView()
        img.image = .init(systemName: "gearshape")
        img.tintColor = .white
        return img
    }()
    
    let playImageView: UIImageView = {
        let img = UIImageView()
        img.image = .init(systemName: "power.circle")
        img.tintColor = .white
        return img
    }()
    
    lazy var stackView: UIStackView = {
        let st = UIStackView(arrangedSubviews: [playImageView, settingImageView])
        st.spacing = 10
        st.axis = .horizontal
        st.distribution = .equalSpacing
        st.alignment = .fill

        return st
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .black
        self.addSubview(imageBackgroundView)
        self.addSubview(mainLabel)
        self.addSubview(stackView)
        
        mainLabel.translatesAutoresizingMaskIntoConstraints = false
        mainLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        mainLabel.bottomAnchor.constraint(equalTo: self.imageBackgroundView.topAnchor, constant: -70).isActive = true
        
        imageBackgroundView.translatesAutoresizingMaskIntoConstraints = false
        imageBackgroundView.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        imageBackgroundView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        imageBackgroundView.widthAnchor.constraint(equalToConstant: 250).isActive = true
        imageBackgroundView.heightAnchor.constraint(equalToConstant: 250).isActive = true
        
        mainImageView.translatesAutoresizingMaskIntoConstraints = false
        mainImageView.widthAnchor.constraint(equalToConstant: 200).isActive = true
        mainImageView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        mainImageView.centerYAnchor.constraint(equalTo: imageBackgroundView.centerYAnchor).isActive = true
        mainImageView.centerXAnchor.constraint(equalTo: imageBackgroundView.centerXAnchor).isActive = true
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 50).isActive = true
        stackView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -50).isActive = true
        stackView.topAnchor.constraint(equalTo: mainImageView.bottomAnchor, constant: 100).isActive = true

        
        playImageView.translatesAutoresizingMaskIntoConstraints = false
        playImageView.heightAnchor.constraint(equalToConstant: 120).isActive = true
        playImageView.widthAnchor.constraint(equalToConstant: 120).isActive = true
        
        settingImageView.translatesAutoresizingMaskIntoConstraints = false
        settingImageView.heightAnchor.constraint(equalToConstant: 120).isActive = true
        settingImageView.widthAnchor.constraint(equalToConstant: 120).isActive = true
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }


}
