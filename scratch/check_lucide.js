const lucide = require('lucide-react');

const icons = [
  'Sparkles',
  'BarChart3',
  'GraduationCap',
  'Laptop',
  'ShieldCheck',
  'Chrome',
  'ArrowRight',
  'Info'
];

console.log('--- Checking Lucide Icons ---');
icons.forEach(name => {
  console.log(`${name}: ${lucide[name] !== undefined ? 'VALID' : 'UNDEFINED'}`);
});
