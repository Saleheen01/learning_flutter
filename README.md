# Flutter Learning Journey 🚀

A hands-on Flutter learning repository where I am practicing and implementing Flutter concepts step by step.

This repository documents my progress from building the basic Flutter application structure to working with UI components, forms, layouts, tabs, navigation, data passing, and reusable widgets.

The purpose of this repository is **learning through implementation** — each major concept is practiced through a separate commit so that my learning progress can be tracked through Git history.

---

## 📚 What I Have Practiced

### 1. Flutter Application Structure

Started by understanding the basic Flutter application flow:

```text
main()
   ↓
MyApp
   ↓
MaterialApp
   ↓
HomeActivity
   ↓
Scaffold
   ↓
AppBar
```

I also implemented a custom function for displaying `SnackBar` messages.

---

### 2. AppBar

Practiced working with:

* `AppBar`
* AppBar title
* AppBar actions
* `IconButton`
* Handling button actions
* Displaying messages using `SnackBar`

---

### 3. Floating Action Button

Implemented and practiced:

* `FloatingActionButton`
* Button actions
* Customizing the button
* Connecting actions with `SnackBar`

---

### 4. Bottom Navigation Bar

Implemented:

* `BottomNavigationBar`
* `BottomNavigationBarItem`
* Navigation item labels
* Navigation item icons
* `currentIndex`
* `onTap`
* Handling different navigation selections

---

### 5. Drawer & End Drawer

Practiced Flutter's side navigation components:

* `Drawer`
* `endDrawer`
* `DrawerHeader`
* `UserAccountsDrawerHeader`
* `ListTile`
* Selected drawer items
* `selectedColor`
* `selectedTileColor`
* Drawer actions

---

### 6. Body & Layout Implementation

Practiced building the body of a Flutter screen using different widgets and layout structures.

Some of the concepts practiced include:

* `Container`
* `Center`
* `Column`
* `Row`
* `Padding`
* Widget nesting
* Layout properties
* Basic UI composition

---

### 7. Buttons

Implemented and practiced different Flutter button types:

* `TextButton`
* `OutlinedButton`
* `ElevatedButton`

I also practiced creating and applying a reusable `ButtonStyle` to customize buttons.

---

### 8. Alert Dialog

Implemented `AlertDialog` and practiced:

* `showDialog()`
* `AlertDialog`
* Dialog title and content
* Dialog actions
* `TextButton`
* Closing dialogs using `Navigator.pop()`
* Showing a `SnackBar` after an action

---

### 9. Forms

Practiced creating forms in Flutter.

#### Simple Form

Implemented a basic form structure and worked with form-related Flutter widgets.

#### Dynamic Form

Extended the form implementation to generate form fields dynamically rather than creating every field individually.

---

### 10. GridView Builder

Practiced displaying content in a grid using:

```dart
GridView.builder()
```

Also worked with:

* `SliverGridDelegateWithFixedCrossAxisCount`
* `crossAxisCount`
* Grid spacing
* Dynamically generated grid items

---

### 11. TabBar & Tab Controller

Implemented a tab-based interface and practiced:

* `TabController`
* `TabBar`
* `TabBarView`
* Multiple child screens
* Connecting child screens with tabs
* Switching between different views

I also separated the tab content into different Dart files/screens to practice organizing Flutter code.

---

### 12. Navigation Between Screens

Practiced navigating between different Flutter screens using:

```dart
Navigator.push()
```

and:

```dart
MaterialPageRoute()
```

I created multiple activity/screen pages and implemented navigation:

```text
HomeActivity
     ↓
 Activity1
     ↓
 Activity2
```

The screens can also navigate between each other.

---

### 13. Passing Data Through Navigation

Practiced passing data from one screen to another during navigation.

For example:

```dart
Navigator.push(
  context,
  MaterialPageRoute(
    builder: (context) => Activity1(
      "This is home to Activity_1",
    ),
  ),
);
```

The receiving screen accepts the passed data through its constructor and displays it.

This helped me understand how data can move between different Flutter screens.

---

### 14. Card

Implemented Flutter's `Card` widget and practiced creating UI content inside cards.

This introduced another common approach for structuring and presenting information in a Flutter interface.

---

# 🧠 Concepts Covered So Far

Through these implementations, I have practiced:

* Flutter application structure
* `MaterialApp`
* `Scaffold`
* `AppBar`
* `SnackBar`
* `FloatingActionButton`
* `BottomNavigationBar`
* `Drawer`
* `EndDrawer`
* `DrawerHeader`
* `ListTile`
* `TextButton`
* `OutlinedButton`
* `ElevatedButton`
* `ButtonStyle`
* `AlertDialog`
* `showDialog()`
* Forms
* Dynamic form generation
* `GridView.builder`
* `TabBar`
* `TabBarView`
* `TabController`
* Multiple screens
* `Navigator`
* `MaterialPageRoute`
* Passing data through constructors
* `Card`
* Basic Flutter UI composition
* Basic screen-to-screen navigation

---

# 📈 Learning Progress

```text
Flutter Basics
      ↓
Application Structure
      ↓
Scaffold & AppBar
      ↓
Buttons & User Interaction
      ↓
SnackBar & AlertDialog
      ↓
Drawer & Bottom Navigation
      ↓
Forms
      ↓
Dynamic Forms
      ↓
GridView
      ↓
TabBar & TabController
      ↓
Multiple Screens
      ↓
Navigation
      ↓
Passing Data Between Screens
      ↓
Card UI
```

---

# 🗂️ Commit-Based Learning Progress

My learning progress is documented through Git commits.

| Commit    | What I Practiced                                         |
| --------- | -------------------------------------------------------- |
| `a15d505` | Basic Flutter application structure and custom SnackBar  |
| `cb61c9d` | Floating Action Button & Bottom Navigation Bar           |
| `e5b8186` | Drawer & EndDrawer                                       |
| `13163d5` | Body/UI implementation                                   |
| `7b1d344` | TextButton, OutlinedButton, ElevatedButton & ButtonStyle |
| `8b719f3` | AlertDialog & message handling                           |
| `14911cb` | Simple form generation                                   |
| `9766cf8` | Dynamic form generation                                  |
| `5fd9bce` | GridView.builder                                         |
| `c3da7c3` | TabController, TabBar, TabBarView & child screens        |
| `d49b0e2` | Navigation between multiple screens                      |
| `902a5d0` | Passing data through navigation                          |
| `430939e` | Card implementation                                      |

---

# 🛠️ Technologies

* **Flutter**
* **Dart**
* **Android Studio**
* **Git**
* **GitHub**

---

# 🎯 Current Objective

The goal of this repository is to build a strong foundation in Flutter by learning concepts individually and implementing them in code.

After completing these fundamentals, my next step is to move toward more practical Flutter development, including building complete applications and learning more advanced concepts.

---

# 🚀 What's Next?

The next stage of my Flutter journey will focus on applying these fundamentals to larger and more practical projects.

Some of the areas I plan to explore next:

* Responsive UI
* Better project structure
* Reusable widgets
* Form validation
* State management
* API integration
* JSON handling
* Local data storage
* Firebase
* Authentication
* Real-world Flutter applications

---

## 📌 About This Repository

This is a **learning repository**, not a finished production application.

The code may change, be refactored, or be rewritten as I learn better approaches.

The commit history represents my learning process — from understanding individual Flutter widgets to combining them into functional interfaces and navigating between screens.

> **Learn → Implement → Commit → Improve → Build**

---

## 👨‍💻 Author

**Saleheen Ferdous**

Learning Flutter and building my way toward becoming a Flutter developer.
