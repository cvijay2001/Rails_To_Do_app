
# 📝 ToDo App

The ToDo App is a task management application built using the Ruby on Rails framework. It supports two types of users: regular users and admin users. The app provides functionalities for creating, updating,changing task status and deleting tasks also offers an admin dashboard for managing users and tasks in order of priority.


## 🚀 Features

- **🔒 User Authentication:** Secure login and registration system for regular and admin users.
- **🗂️ Task Management:** Users can create, edit, and delete tasks. Each task can have a title, description, due date, and importance level.
- **📊 Admin Dashboard:** Admin users have access to a dashboard where they can manage all users and their tasks.
- **📱 Responsive Design:** The app is designed to be responsive, ensuring a seamless experience across different devices.
- **⚙️ Task Priority:** The app calculates a priority score for each task using a simple vector formula (e.g., weighted sum of due date and importance). Tasks are displayed in order of priority, helping users focus on the most important tasks first.

## 🛠️ Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/cvijay2001/Rails_To_Do_app.git
   ```
2. Navigate to the project directory:
   ```bash
   cd todo-app
   ```
3. Install the required gems:
   ```bash
   bundle install
   ```
4. Set up the database:
   ```bash
   rails db:create
   rails db:migrate
   ```
5. Start the Rails server:
   ```bash
   rails server
   ```
6. Open your browser and go to `http://localhost:3000` to access the app.

## 📘 Usage

1. **🔐 Register** as a new user or **🔓 log in** if you already have an account.
2. **📝 Create a task** by providing a title, description, due date, status and importance level.
3. **✏️ Edit or 🗑️ delete tasks** as needed to keep your task list up to date.
4. **🛡️ Admin users** can access the admin dashboard to manage all users and their tasks.

## 🤝 Contributing

1. Fork the repository.
2. Create a new branch (`git checkout -b feature-branch`).
3. Make your changes.
4. Commit your changes (`git commit -am 'Add new feature'`).
5. Push to the branch (`git push origin feature-branch`).
6. Create a new Pull Request.


## 🙏 Acknowledgements

- [Ruby on Rails](https://rubyonrails.org/)
- [Bootstrap](https://getbootstrap.com/) for responsive design
- [Devise](https://github.com/heartcombo/devise) for user authentication

---

Developed by [Vijay Chinchpurkar](https://github.com/cvijay2001)
