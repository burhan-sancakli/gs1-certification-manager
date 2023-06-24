begin
-- load data
 
insert into gs1_certtype (
    --id,
    master,
    title,
    certdesc,
    duration_years,
    version,
    valid_from,
    valid_to,
    learning_material,
    mimetype,
    fname,
    cdate,
    mdate
) values (
    --1,
    null,
    'Java SE 8 Programmer',
    'The Oracle Certified Associate (OCA) certification is a credential offered by Oracle Corporation, a leading technology company specializing in database management systems, enterprise software, and cloud solutions. The OCA certification is designed to validate the foundational skills and knowledge of individuals working with Oracle technologies.',
    8,
    1,
    '03/06/2016',
    '03/06/2026',
    null,
    'application/pdf',
    '[JAVA][OCA Oracle Certified Associate Java SE 8 Programmer I Study Guide Exam 1Z0-808].pdf',
    '04/03/2016',
	'04/03/2016'
);

insert into gs1_certtype (
    --id,
    master,
    title,
    certdesc,
    duration_years,
    version,
    valid_from,
    valid_to,
    learning_material,
    mimetype,
    fname,
    cdate,
    mdate
) values (
    --2,
    null,
    'Python Development Certificate',
    'By successfully completing this certificate program in Intermediate Python Programming, you will gain a comprehensive understanding of advanced Python programming concepts and techniques. You will be equipped with the knowledge and skills necessary to develop more sophisticated and robust Python applications.',
    2,
    1,
    '09/01/2022',
	'01/12/2024',
    null,
    'application/pdf',
    'patrones.pdf',
    '06/05/2023',
	'06/05/2023'
);

insert into gs1_certtype (
    --id,
    master,
    title,
    certdesc,
    duration_years,
    version,
    valid_from,
    valid_to,
    learning_material,
    mimetype,
    fname,
    cdate,
    mdate
) values (
    --3,
    null,
    'Project Management Professional (PMP)',
    'The Project Management Professional (PMP) certification is a globally recognized credential offered by the Project Management Institute (PMI). It is designed to validate the knowledge, skills, and experience of project managers and demonstrates their ability to lead and manage projects effectively.',
    15,
	1,
    '11/04/2012',
	'11/04/2027',
    null,
    'application/pdf',
    'PMP_Project_Management_Professional_Exam.pdf',
	'09/04/2012',
	'11/04/2012'
);

insert into gs1_certtype (
    --id,
    master,
    title,
    certdesc,
    duration_years,
    version,
    valid_from,
    valid_to,
    learning_material,
    mimetype,
    fname,
    cdate,
    mdate
) values (
    --4,
    3,
    'Project Management Professional (PMP) 2.0',
    'The Project Management Professional (PMP) 2.0 certification is an updated and enhanced version of the globally recognized PMP credential offered by the Project Management Institute (PMI). Building upon the success and principles of the original PMP certification, version 2.0 reflects the evolving landscape of project management and incorporates new practices and techniques to further empower project managers in delivering successful projects.',
    15,
	2,
	'03/01/2021',
	'03/01/2031',
	null,
	'application/pdf',
	'PMP_Project_Management_Professional_Exam.pdf',
	'03/01/2021',
	'03/01/2021'
);
 
-- load data
end;