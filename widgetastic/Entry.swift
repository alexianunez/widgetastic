import Foundation

struct Entry {
  let name: String
  let date: Date
  let imageName: String

  init(name: String, date: Date, imageName: String) {
    self.name = name
    self.date = date
    self.imageName = imageName
  }
}
