import UIKit

func alert(withTitle title: String, message: String, viewController: UIViewController) {
    if viewController.presentedViewController == nil { // Prevent multiple alerts at the same time
        let localizedTitle = NSLocalizedString(title, comment: "")
        let localizedMessage = NSLocalizedString(message, comment: "")
        let alert = UIAlertController(title: localizedTitle, message: localizedMessage, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(action)
        
        viewController.present(alert, animated: true, completion: nil)
    }
}

func alertWithConfirm(withTitle title: String, message: String, viewController: UIViewController) {
    if viewController.presentedViewController == nil { // Prevent multiple alerts at the same time
        let localizedTitle = NSLocalizedString(title, comment: "")
        let localizedMessage = NSLocalizedString(message, comment: "")
        let alert = UIAlertController(title: localizedTitle, message: localizedMessage, preferredStyle: .alert)

        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)

        let cancelAction = UIAlertAction(title: "Cancel", style: .default) { (UIAlertAction) in
            print("Cancel tapped")
        }

        alert.addAction(okAction)
        alert.addAction(cancelAction)

        viewController.present(alert, animated: true, completion: nil)
    }
}
