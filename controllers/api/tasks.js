const Task = require('../../models/taskSchema');





// Get all tasks
const getAllTasks = async (req, res) => {
  try {
    const tasks = await Task.find();
    res.json(tasks);
  } catch (error) {
    res.status(500).json({ error: 'Internal server error' });
  }
};

// Create a new task
const createTask = async (req, res) => {
  try {
    const { title, description, startTime, endTime, priority } = req.body;
    const task = new Task({
      title,
      description,
      startTime,
      endTime,
      priority
    });
    const newTask = await task.save();
    res.status(201).json(newTask);
  } catch (error) {
    res.status(400).json({ error: 'Bad request' });
  }
};

// Update a task
const updateTask = async (req, res) => {
  try {
    const { taskId } = req.params;
    const { title, description, startTime, endTime, priority, status } = req.body;
    const updatedTask = await Task.findByIdAndUpdate(
      taskId,
      {
        title,
        description,
        startTime,
        endTime,
        priority,
        status
      },
      { new: true }
      
    );
    if (updatedTask) {
      res.json(updatedTask);
    } else {
      res.status(404).json({ error: 'Task not found' });
    }
  } catch (error) {
    res.status(400).json({ error: 'Bad request' });
    console.log(error)
  }
};

// Delete a task
const deleteTask = async (req, res) => {
  try {
    const { taskId } = req.params;
    const deletedTask = await Task.findByIdAndRemove(taskId);
    if (deletedTask) {
      res.json({ message: 'Task deleted' });
    } else {
      res.status(404).json({ error: 'Task not found' });
    }
  } catch (error) {
    res.status(400).json({ error: 'Bad request' });
  }
};

module.exports = {
  getAllTasks,
  createTask,
  updateTask,
  deleteTask
};
