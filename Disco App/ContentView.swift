
import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                Rectangle().frame(width: 200, height:200)
                Rectangle().frame(width: 200, height:200)
                Rectangle().frame(width: 200, height:200)
            }
            HStack{
                Rectangle().frame(width: 200, height:200)
                Rectangle().frame(width: 200, height:200)
                Rectangle().frame(width: 200, height:200)
            }
            HStack{
                Rectangle().frame(width: 200, height:200)
                Rectangle().frame(width: 200, height:200)
                Rectangle().frame(width: 200, height:200)
                
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
