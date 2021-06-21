import Foundation

class CoronaClass {
 
     var seats = [Int]()
     var countSeats: Int = 0
     var n = 0

     init(n: Int) {
        self.n = n
     }
     
     func seat() -> Int {
        var location = 0
        let lastSeat = n - 1
        
        if !seats.contains(lastSeat) {
            location = lastSeat
        }
        if seats.contains(0) {
            var maxDistance = 0
            var i = 0
            while i < seats.count - 1 {
                let distance = (seats[i + 1] - seats[i]) / 2
                if distance > maxDistance {
                    maxDistance = distance
                    location = seats[i] + distance
                }
                i += 1
            }
        }
        seats.append(location)
        seats.sort()
        return location
//
//        if seats.isEmpty {
//            seats.append(0)
//            return 0
//        }
//
//        if seats.first != 0 {
//            seats.insert(0, at: 0)
//            return 0
//        }
//
//        if seats.last != countSeats - 1 {
//            seats.append(countSeats - 1)
//            return countSeats - 1
//        }
//
     }
     
     func leave(_ p: Int) {
        if seats.contains(p) {
            seats.remove(at: seats.firstIndex(of: p)!)
        }
     }
}
