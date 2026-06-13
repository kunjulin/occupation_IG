const https = require('https');
const http = require('http');
const url = require('url');

function getPage(pageUrl) {
  console.log('Fetching:', pageUrl);
  const parsedUrl = url.parse(pageUrl);
  const requestModule = parsedUrl.protocol === 'https:' ? https : http;
  
  requestModule.get(pageUrl, (res) => {
    if (res.statusCode === 301 || res.statusCode === 302) {
      console.log('Redirecting to:', res.headers.location);
      getPage(res.headers.location);
      return;
    }
    if (res.statusCode !== 200) {
      console.error('Failed to fetch:', res.statusCode);
      process.exit(1);
    }
    let html = '';
    res.on('data', (chunk) => { html += chunk; });
    res.on('end', () => {
      const regex = /href="([^"]+)"/g;
      let match;
      console.log('--- FOUND LINKS ---');
      while ((match = regex.exec(html)) !== null) {
        const link = match[1];
        if (link.includes('tgz') || link.includes('TWCR') || link.includes('package')) {
          console.log(link);
        }
      }
    });
  }).on('error', (err) => {
    console.error('Error:', err.message);
    process.exit(1);
  });
}

getPage('https://twcore.mohw.gov.tw/ig/twcrsf/downloads.html');
