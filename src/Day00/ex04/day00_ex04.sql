SELECT
  concat(
    name,
    ' (age:',
    age,
    ',gender:''',
    gender,
    ''',address:''',
    address,
    ''')'
  ) AS line_info
FROM
  person
ORDER BY
  line_info