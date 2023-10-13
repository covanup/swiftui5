import SwiftUI

struct ContentView: View {
    @State private var position: CGPoint = .init(x: UIScreen.main.bounds.width/2, y: UIScreen.main.bounds.height/2)
    
    var body: some View {
        ZStack {
            VStack(spacing:0) {
                Color.white
                Color.pink
                Color.yellow
                Color.black
            }
            ZStack {
                Color.white.blendMode(.exclusion)
                Color.white.blendMode(.hue)
                Color.white.blendMode(.overlay)
                Color.black.blendMode(.overlay)
            }
            .frame(width: 100, height: 100)
            .cornerRadius(20.0)
            .position(position)
            .gesture(DragGesture().onChanged { value in position = value.location } )
        }.ignoresSafeArea()
    }
}
