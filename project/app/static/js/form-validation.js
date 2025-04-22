document.addEventListener('DOMContentLoaded', () => {
    const licenceOfficeSelect = document.getElementById('licence-office');
    const licenceNoInput = document.getElementById('licence-no');
    const issueDateInput = document.getElementById('issue-date');
    const expiryDateInput = document.getElementById('expiry-date');
    const dobInput = document.getElementById('dob');
    const contactNoInput = document.getElementById('contact-no');
    const provinceSelect = document.getElementById('province');
    const districtSelect = document.getElementById('district');
    const photoInput = document.getElementById('photo');
    const successMessage = document.getElementById('success-message');
    const form = document.getElementById('licence-form');

    const districtsByProvince = {
        'Province 1': ['Bhojpur', 'Dhankuta', 'Ilam', 'Jhapa', 'Khotang', 'Morang', 'Okhaldhunga', 'Panchthar', 'Sankhuwasabha', 'Solukhumbu', 'Sunsari', 'Taplejung', 'Terhathum', 'Udayapur'],
        'Province 2': ['Bara', 'Dhanusa', 'Mahottari', 'Parsa', 'Rautahat', 'Saptari', 'Sarlahi', 'Siraha'],
        'Province 3': ['Bhaktapur', 'Chitwan', 'Dhading', 'Dolakha', 'Kathmandu', 'Kavrepalanchok', 'Lalitpur', 'Makwanpur', 'Nuwakot', 'Ramechhap', 'Rasuwa', 'Sindhuli', 'Sindhupalchok'],
        'Province 4': ['Baglung', 'Gorkha', 'Kaski', 'Lamjung', 'Manang', 'Mustang', 'Myagdi', 'Nawalpur', 'Parbat', 'Syangja', 'Tanahun'],
        'Province 5': ['Arghakhanchi', 'Banke', 'Bardiya', 'Dang', 'Gulmi', 'Kapilvastu', 'Parasi', 'Palpa', 'Pyuthan', 'Rolpa', 'Rukum (East)', 'Rupandehi'],
        'Province 6': ['Dailekh', 'Dolpa', 'Humla', 'Jajarkot', 'Jumla', 'Kalikot', 'Mugu', 'Rukum (West)', 'Salyan', 'Surkhet'],
        'Province 7': ['Achham', 'Baitadi', 'Bajhang', 'Bajura', 'Dadeldhura', 'Darchula', 'Doti', 'Kailali', 'Kanchanpur']
    };


    provinceSelect.addEventListener('change', () => {
        const selectedProvince = provinceSelect.value;
        const districts = districtsByProvince[selectedProvince];
        districtSelect.innerHTML = districts.map(district => `<option value="${district}">${district}</option>`).join('');
    });

    function validateContactNo() {
        const contactNo = contactNoInput.value;
        const isValid = /^9\d{9}$/.test(contactNo);
        if (!isValid) {
            alert('Contact number must start with 9 and be exactly 10 digits');
            contactNoInput.classList.add('error');
            return false;
        } else {
            contactNoInput.classList.remove('error');
            return true;
        }
    }

    function validatePhoto() {
        const photoFile = photoInput.files[0];
        if (!photoFile || photoFile.size > 200 * 1024 || !['image/png', 'image/jpeg'].includes(photoFile.type)) {
            alert('Photo must be a PNG or JPEG file under 200 KB');
            return false;
        }
        return true;
    }

    function generateLicenceNo() {
        const getRandomNumber = (length) => {
            let result = '';
            for (let i = 0; i < length; i++) {
                result += Math.floor(Math.random() * 10);
            }
            return result;
        };

        const part1 = licenceOfficeSelect.value;
        const dob = dobInput.value;
        const part2 = dob.slice(-2);
        const part3 = getRandomNumber(8);
        return `${part1}-${part2}-${part3}`;
    }

    licenceOfficeSelect.addEventListener('change', () => {
        licenceNoInput.value = generateLicenceNo();
        const today = new Date().toISOString().split('T')[0];
        issueDateInput.value = today;
        const expiryDate = new Date();
        expiryDate.setFullYear(expiryDate.getFullYear() + 5);
        expiryDateInput.value = expiryDate.toISOString().split('T')[0];
    });

    dobInput.max = new Date().toISOString().split("T")[0];

    // Initialize the form with default values
    licenceOfficeSelect.dispatchEvent(new Event('change'));
    provinceSelect.dispatchEvent(new Event('change'));
});
