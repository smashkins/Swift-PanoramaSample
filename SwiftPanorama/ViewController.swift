import UIKit

class ViewController: GLKViewController {
    
    @IBOutlet weak var panoramaView: PanoramaView!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        panoramaView.initialize()
        
        panoramaView.setImage(#imageLiteral(resourceName: "park_2048"))
        panoramaView.touchToPan = false          // Use touch input to pan
        panoramaView.orientToDevice = true     // Use motion sensors to pan
        panoramaView.pinchToZoom = false         // Use pinch gesture to zoom
        panoramaView.showTouches = false         // Show touches
        panoramaView.vrMode = true
    }
    
    override func glkView(_ view: GLKView, drawIn rect: CGRect) {
        panoramaView.draw()
    }
}

