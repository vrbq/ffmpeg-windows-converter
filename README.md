# <p align="center">AVI to MP4 Converter for Windows</p>

This tool allows you to effortlessly convert .avi video files to .mp4 format on Windows operating systems. Below, you'll find everything you need to get started with this handy utility.

---

### :gear: What does it do ?

Before diving into converting your video files, ensure you've followed these steps:

1. **Clone the Repository:** Clone this repository to your local machine.
2. **Initialize the Environment:** Run the `init` script to set up the necessary environment variables. This script places the `ffmpeg/bin` directory in the system's PATH variable.
3. **Convert Your Videos:** Use the `convert` script to convert your .avi files to .mp4. This script offers four different conversion speeds to suit your needs.

### 🛠️ Prerequisites

- Windows operating system
- Know to double-click on something

### 🧑🏻‍💻 How to Use

1. **Clone the Repository:**

   ```bash
   git clone https://github.com/your-username/avi-to-mp4-converter.git
   ```

2. **Download [this](https://www.gyan.dev/ffmpeg/builds/ffmpeg-git-full.7z) ffmpeg release.**

If not available, check any new release [here](https://www.gyan.dev/ffmpeg/builds/) or [there](https://ffmpeg.org/download.html#build-windows)

3. **Extract the downloaded build**

Place it in a folder called `ffmpeg` (same level as `.bat` file). The `\bin` need to be in the sublevel (`ffmpeg\bin`)

4. **Initialize the Environment:**

Double-click on `init.bat`

5. **Place Your Videos in folder "TO_CONVERT"**

Please one video at a time !

6. **Convert Your Videos:**

Double-click on `convert.bat`and choose a conversion speed.

#### Conversion Speeds

- **Medium:** `medium` (default)
- **Slow:** `slow` (best quality)
- **Fast:** `fast` (low quality)
- **Ultra-Fast:** `ultrafast` (very low quality)

### :arrows_counterclockwise: Dependencies

This project relies on the ffmpeg library for video conversion. You'll find the library included in the [ffmpeg](https://ffmpeg.org/) directory.

## ❤️ Support

A simple star to this project repo is enough to keep me motivated on this project.  
For any questions, bug reports, or feature requests, feel free to open an issue on GitHub.

### :people_holding_hands: Contribution

Contributions are welcome! If you have suggestions for improvements or new features, please open a pull request.
