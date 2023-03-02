import UIKit

class StartView: UIView {
    
    let mainLabel: UILabel = {
        let tv = UILabel()
        tv.font = .boldSystemFont(ofSize: 76)
        tv.textColor = UIColor(red: 255/255, green: 220/255, blue: 115/255, alpha: 1)
        tv.text = "絶対 催眠"
        
        return tv
    }()
    
    let mainImageView: UIImageView = {
        let img = UIImageView()
        img.image = UIImage(systemName: "eye.circle")
        img.tintColor = UIColor(red: 255/255, green: 207/255, blue: 64/255, alpha: 1)
        return img
    }()
    
    let playImageView: UIImageView = {
        let img = UIImageView()
        img.image = .init(systemName: "power.circle")
        img.tintColor = UIColor(red: 255/255, green: 220/255, blue: 115/255, alpha: 1)
        return img
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor(red: 102/255, green: 0.0/255, blue: 102/255, alpha: 1.0)
        self.addSubview(mainImageView)
        self.addSubview(mainLabel)
        self.addSubview(playImageView)
        
        mainLabel.translatesAutoresizingMaskIntoConstraints = false
        mainLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        mainLabel.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
        
        mainImageView.translatesAutoresizingMaskIntoConstraints = false
        mainImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 50).isActive = true
        mainImageView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -50).isActive = true
        mainImageView.heightAnchor.constraint(equalToConstant: 280).isActive = true
        mainImageView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        mainImageView.topAnchor.constraint(equalTo: mainLabel.bottomAnchor, constant: 80).isActive = true

        playImageView.translatesAutoresizingMaskIntoConstraints = false
        playImageView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        playImageView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -100).isActive = true
        playImageView.heightAnchor.constraint(equalToConstant: 120).isActive = true
        playImageView.widthAnchor.constraint(equalToConstant: 120).isActive = true
        

    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }


}
