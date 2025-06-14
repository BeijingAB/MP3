import os

def pad_iso_to_512_multiple(file_path):
    # Get the file size
    file_size = os.path.getsize(file_path)
    
    # Calculate the padding needed
    padding = (512 - file_size % 512) % 512
    
    if padding > 0:
        with open(file_path, "ab") as f:
            f.write(b"\x00" * padding)  # Append zeros
    
    print(f"File padded with {padding} bytes to make it a multiple of 512.")

# Example usage
pad_iso_to_512_multiple("song.iso")

