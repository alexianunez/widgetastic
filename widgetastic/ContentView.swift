import SwiftUI

struct EntryView: View {
  var entry: Entry

  var body: some View {
    ZStack {
      Image(entry.imageName)
        .resizable()
        .blur(radius: 3.0)
        .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
        .edgesIgnoringSafeArea(.all)
      VStack {
        Text(entry.name)
          .font(.system(.title))
          .foregroundColor(.white)
        Text(entry.date.description)
          .font(.system(.body))
          .foregroundColor(.white)
      }
    }
  }
}

struct ContentView: View {
    var body: some View {
      EntryView(entry: Entry(name: "Disney Halloween",
                             date: Date(),
                             imageName: "Disney"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
