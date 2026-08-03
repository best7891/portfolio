<div class="container mt-2">
    <h2 class="mb-4">ฟอร์มเพิ่มข้อมูลเว็บไซต์</h2>
    <form action="web_add_save.php" method="GET">
        <div class="mb-3">
            <label for="url" class="form-label">URL</label>
            <input type="text" class="form-control" id="url" name="url">
            <placeholder="Enter URL" required>
        </div>

        <div class="mb-3">
            <label for="description" class="form-label">Desciption</label>
            <input type="text" class="form-control" id="description" name="description">
            <placeholder="Enter Description" required>
        </div>

        <div class="mb-3">
            <label for="detail1" class="form-label">Detail 1</label>
            <input type="text" class="form-control" id="detail1" name="detail1">
            <placeholder="Enter Detail 1" required>
        </div>

        <div class="mb-3">
            <label for="detail2" class="form-label">Detail 2</label>
            <input type="text" class="form-control" id="detail2" name="detail2">
            <placeholder="Enter Det 2" required>
        </div>
        <button type="submit" class="btn btn-primary">เพิ่มwebsiteใหม่</button>
    </form>
</div>