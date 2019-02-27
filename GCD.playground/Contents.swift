import UIKit

let queue = DispatchQueue(label: "queue.ming", qos: .default, attributes: .concurrent)
let group = DispatchGroup()
let start = Date()
queue.async(group: group) {
    print("\(Thread.current): 任务1 => 睡2秒")
    Thread.sleep(forTimeInterval: 2)
}
queue.async(group: group) {
    print("\(Thread.current): 任务2 => 睡4秒")
    Thread.sleep(forTimeInterval: 4)
}

queue.async(group: group, qos: .default, flags: .barrier) {
    print("\(Thread.current): 任务1、2已完成 => 睡3秒")
    Thread.sleep(forTimeInterval: 3)
}

queue.async(group: group) {
    print("\(Thread.current): 任务3 => 睡3秒")
    Thread.sleep(forTimeInterval: 3)
}
queue.async(group: group) {
    print("\(Thread.current): 任务4 => 睡2秒")
    Thread.sleep(forTimeInterval: 2)
}
group.notify(queue: .main) {
    print("\(Thread.current): 异步任务全部完成...")
    print("耗时: \(Date().timeIntervalSince(start))")
}
