from PIL import Image
from pathlib import WindowsPath as wp


def resize(dir: str, height: int, width: int) -> None:
    cwd = wp.cwd()
    photo_dir = cwd.joinpath(dir)
    if photo_dir.is_file():
        with Image.open(photo_dir) as img:
            if width and height:
                new_img = img.resize((width, height))
            else:
                new_img = img.resize((768, 1024))
            new_img.save(photo_dir)


if __name__ == "__main__":
    dir = input("photo location -> ")
    desired_height = input("new height -> ")
    desired_width = input("new width -> ")
    resize(
        dir=dir,
        height=desired_height,
        width=desired_width,
    )
