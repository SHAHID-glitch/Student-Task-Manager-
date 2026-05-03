import Foundation

var tasks: [String] = []

func showMenu() {
    print("""
    \n===== Task Manager =====
    1. Add Task
    2. View Tasks
    3. Delete Task
    4. Exit
    Enter your choice:
    """)
}

func addTask() {
    print("Enter task:")
    if let task = readLine() {
        tasks.append(task)
        print("✅ Task added!")
    }
}

func viewTasks() {
    if tasks.isEmpty {
        print("⚠️ No tasks found.")
    } else {
        print("\nYour Tasks:")
        for (index, task) in tasks.enumerated() {
            print("\(index + 1). \(task)")
        }
    }
}

func deleteTask() {
    viewTasks()
    print("Enter task number to delete:")
    if let input = readLine(), let index = Int(input), index > 0 && index <= tasks.count {
        tasks.remove(at: index - 1)
        print("🗑️ Task deleted!")
    } else {
        print("❌ Invalid input")
    }
}

// Main Loop
while true {
    showMenu()
    if let choice = readLine() {
        switch choice {
        case "1":
            addTask()
        case "2":
            viewTasks()
        case "3":
            deleteTask()
        case "4":
            print("👋 Exiting...")
            exit(0)
        default:
            print("❌ Invalid choice")
        }
    }
}
