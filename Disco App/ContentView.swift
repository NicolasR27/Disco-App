
import SwiftUI

struct ContentView: View {
    @State private var colorTimer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    private var colorArray = [Color.blue,Color.black,Color.yellow]
    
    @State private var colorIndex = 0
    @State private var colorIndex2 = 1
    
    var body: some View {
        VStack {
            HStack {
                Rectangle().frame(width: 200, height: 200).foregroundColor(colorArray[colorIndex])
                    .onReceive(colorTimer, perform: {_ in
                        if colorIndex == 2 {
                            colorIndex = 0
                            
                        }
                        withAnimation(.easeIn(duration: 1)) {
                            colorIndex2 = colorIndex+1
                            self.foregroundColor(colorArray[colorIndex])                
                        }
                    })
               
              
                Rectangle().frame(width: 200, height :200).foregroundColor(colorArray[colorIndex2])
                    .onReceive(colorTimer, perform: { _ in
                        if colorIndex2 == 2 {
                        colorIndex2 = 0
                        }
                        withAnimation(.easeIn(duration: 1)) {
                            colorIndex2 = colorIndex2+1
                            self.foregroundColor(colorArray[colorIndex2])
                        }
                    })
                
            }
            HStack{
               
            }
            HStack {
                
            }
        }
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

