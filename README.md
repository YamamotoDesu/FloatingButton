# FloatingButton-Swift
Swift: Confetti Animation Effect (2021, Xcode 12, Swift 5)  
https://www.youtube.com/watch?v=oobm2y-d17E

## Requirement
- Xcode Version 12.4 (12D4e)
- Swift 5

## Image
![demo](https://github.com/YamamotoDesu/FloatingButton/blob/main/RocketSim%20Recording%20-%20iPhone%2012%20-%202021-07-18%2016.44.52.gif)
<br><br>


#### Sample Code
```swift
    private let floatingButton: UIButton = {
       let button = UIButton(frame: CGRect(x: 0, y: 0, width: 60, height: 60))
        button.backgroundColor = .systemPink
        let image = UIImage(systemName: "plus",
                            withConfiguration: UIImage.SymbolConfiguration(pointSize: 30, weight: .medium))
        button.setImage(image, for: .normal)
        button.tintColor = .white
        button.setTitleShadowColor(.white ,for: .normal)
        button.layer.shadowRadius = 10
        button.layer.shadowOpacity = 0.3
        
        //Coner Radius　※masksToBoundsを使用するとshadowRadiusが表示されないためコメントアウト
        //button.layer.masksToBounds = true
        button.layer.cornerRadius = 30
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(floatingButton)
        floatingButton.addTarget(self, action: #selector(didTapButtton), for: .touchUpInside)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        floatingButton.frame = CGRect(
            x: view.frame.size.width - 70,
            y: view.frame.size.height - 100,
            width: 60,
            height: 60
        )
    }
    
    //アラート
    @objc private func didTapButtton() {
        let alert = UIAlertController(
            title: "Add Something",
            message: "Floating Button Tapped",
            preferredStyle: .alert
        )
        alert.addAction(UIAlertAction(title: "Dismiss",
                                      style: .cancel,
                                      handler: nil))
        present(alert, animated: true)
    }
```
