import UIKit

class DetailViewController: UIViewController {
    @IBOutlet var flagImage: UIImageView!
    var selectedCountry: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        title = selectedCountry.uppercased()
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .action, target: self, action: #selector(buttonTapped))
        
        if let imageToLoad = selectedCountry {
            flagImage.image = UIImage(named: imageToLoad)
        }

    }
    
    
    @objc func buttonTapped() {
        
        guard let imageToShare = flagImage.image?.jpegData(compressionQuality: 0.8) else {
            print("Image compression failed")
            return
        }
        
        let vc = UIActivityViewController(activityItems: [imageToShare, selectedCountry], applicationActivities: [])
        vc.popoverPresentationController?.barButtonItem = navigationItem.rightBarButtonItem
        present(vc, animated: true)
        
    }
    
}
