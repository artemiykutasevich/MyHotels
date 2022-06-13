//
//  UIViewController + Extension.swift
//  MyHotels
//
//  Created by Artem Kutasevich on 5.06.22.
//

#if DEBUG
import UIKit
import SwiftUI

extension UIViewController {
    private struct Preview: UIViewControllerRepresentable {
        let viewController: UIViewController
        
        func makeUIViewController(context: Context) -> some UIViewController {
            return viewController
        }
        
        func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {}
    }
    
    func toPreview() -> some View {
        Preview(viewController: self)
    }
}
#endif
