# 360° panorama view

* Updated to  Swift 3

### equirectangular projections

OpenGL, device-oriented, touch-interactive

![example](https://68.media.tumblr.com/befc76dfe47c212d1af30e8bef87672a/tumblr_od5kdgZ0Iv1vfq168o1_500.gif)

acceptable image sizes: (4096×2048), 2048×1024, 1024×512, 512×256, 256×128 ...

* (4096 supported on iPhone 4s and iPad2 onward)



# usage

make your `ViewController` a subclass of `GLKViewController`


### make sure

* no device landscape/portrait auto-rotation

![device](https://raw.github.com/robbykraft/Panorama/master/readme/device_orient.png)

* works properly under any of the 4 device orientations

# Swift 3

```swift
class MainView: GLKViewController {
    
    @IBOutlet weak var panoramaView: PanoramaView!
    
    override func viewDidLoad() {
        panoramaView.initialize()
        
        panoramaView.setImage(park_2048)
        panoramaView.touchToPan = true          // Use touch input to pan
        panoramaView.orientToDevice = false     // Use motion sensors to pan
        panoramaView.pinchToZoom = true         // Use pinch gesture to zoom
        panoramaView.showTouches = true         // Show touches
    }
    
    override func glkView(view: GLKView, drawInRect rect: CGRect) {
        panoramaView.draw()
    }
}
```

# orientation

* __azimuth__ and __altitude__
* __look direction__, the Z vector pointing through the center of the screen

![coordinates](http://upload.wikimedia.org/wikipedia/commons/thumb/f/f7/Azimuth-Altitude_schematic.svg/500px-Azimuth-Altitude_schematic.svg.png)

The program begins by facing the center column of the image, or azimuth 0°

![wikipedia](https://raw.github.com/robbykraft/Panorama/master/readme/azimuth-altitude-pixels.png)

# about equirectangular

![sample](https://raw.github.com/robbykraft/Panorama/master/readme/park_small.jpg)

equirectangular images mapped to the inside of a celestial sphere come out looking like the original scene, and the math is relatively simple [http://en.wikipedia.org/wiki/Equirectangular_projection](http://en.wikipedia.org/wiki/Equirectangular_projection)

# license

MIT