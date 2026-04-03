import Foundation

class SoundBar {
    private var volume = 0
    
    func setVolume(to value: Int) {
        volume = min(max(value, 0), 100)
    }
}
