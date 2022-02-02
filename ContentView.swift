import SwiftUI
import Subsonic

struct ContentView: View {
    let names = ["Austin", "Brodee", "Jonathan"]
    let columns = [
        GridItem(.adaptive(minimum:250))
    ]
    var body: some View {
        VStack {
            NavigationView {
                ScrollView {
                    LazyVGrid(columns: columns) {
                        ForEach(names, id: \.self) {
                            name in Button {
                                play(sound: "Boom.mp3")
                            } label: {
                                Image(name)
                                    .resizable()
                                    .scaledToFit()
                                    .cornerRadius(25)
                                    .padding(.horizontal)
                            }
                        }
                    }
                }
                .navigationTitle("Austin's App")
            }
            .navigationViewStyle(.stack)
        }
    }
}
