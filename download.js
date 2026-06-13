const https = require('https');
const http = require('http');
const fs = require('fs');
const url = require('url');

function download(fileUrl) {
  console.log('Downloading:', fileUrl);
  const parsedUrl = url.parse(fileUrl);
  const requestModule = parsedUrl.protocol === 'https:' ? https : http;
  
  requestModule.get(fileUrl, (res) => {
    if (res.statusCode === 301 || res.statusCode === 302) {
      console.log('Redirecting to:', res.headers.location);
      download(res.headers.location);
      return;
    }
    if (res.statusCode !== 200) {
      console.error('Failed to download:', res.statusCode);
      process.exit(1);
    }
    const file = fs.createWriteStream('package.tgz');
    res.pipe(file);
    file.on('finish', () => {
      file.close();
      console.log('Downloaded successfully');
    });
  }).on('error', (err) => {
    console.error('Error:', err.message);
    process.exit(1);
  });
}

download('https://mitw.dicom.org.tw/IG/TWCR_SF/package.tgz');
