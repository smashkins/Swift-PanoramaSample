import UIKit

class ViewController: GLKViewController {
    
    @IBOutlet weak var panoramaView: PanoramaView!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        panoramaView.initialize()
        
        panoramaView.setImage(#imageLiteral(resourceName: "park_2048"))
        panoramaView.touchToPan = true          // Use touch input to pan
        panoramaView.orientToDevice = false     // Use motion sensors to pan
        panoramaView.pinchToZoom = true         // Use pinch gesture to zoom
        panoramaView.showTouches = true         // Show touches
    }
    
    override func glkView(_ view: GLKView, drawIn rect: CGRect) {
        panoramaView.draw()
    }
}

