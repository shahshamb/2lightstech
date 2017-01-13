function ShowCareers(choice)
{
	ClosedCareers()
   	document.getElementById(choice).style.display = 'block';
    
}

function ClosedCareers()
{

	document.getElementById('Developer').style.display = 'none';
	document.getElementById('Programmer').style.display = 'none';
	document.getElementById('DeveloperRGS99').style.display = 'none';
	document.getElementById('SoftwareKSA1001').style.display = 'none';
	document.getElementById('SystemsDBARGS100').style.display = 'none';
	document.getElementById('SoftwareEngineerNJ1001').style.display = 'none';
	document.getElementById('SoftwareEngineerCA1007').style.display = 'none';
	document.getElementById('SoftwareEngineerNY1006').style.display = 'none';
	document.getElementById('SoftwareEngineerNJ1005').style.display = 'none';
	document.getElementById('SoftwareEngineerFL1002').style.display = 'none';
	document.getElementById('TechnicalLeads').style.display = 'none';
	document.getElementById('SeniorDevelopers').style.display = 'none';
	document.getElementById('e-Architects').style.display = 'none';
	document.getElementById('ProjectManagers').style.display = 'none';
	document.getElementById('ProjectLeaders').style.display = 'none';
	document.getElementById('e-Developers').style.display = 'none';
}