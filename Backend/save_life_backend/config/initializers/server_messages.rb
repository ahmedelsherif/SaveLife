SUCCESS_ID = 1
INVALID_CREDENTIALS_ID = 2
INVALID_PARAMETERS_ID = 3
EMAIL_TAKEN_ID = 4
UNAUTHORIZED_ID = 5
FORBIDDEN_ID = 6
RECORD_NOT_FOUND_ID = 7
HOURS_LIMIT_EXCEEDED_ID = 8
USER_NOT_FOUND_ID = 9
MISSING_PARAMETERS_ID = 10
END_TIME_BEFORE_START_TIME_ID = 11
TIME_INTERVALS_OVERLAPPING_ID = 12
NOTE_EXCEEDED_MAXIMUM_LENGTH_ID = 13
PASSWORD_AND_CONFIRMATION_NOT_EQUAL_ID = 14
PASSWORD_LESS_THAN_MINIMUM_LENGTH_ID = 15
INVALID_EMAIL_FORMAT_ID = 16
EMAIL_LENGTH_EXCEEDED_MAX_ID = 17
NAME_LENGTH_NOT_WITHIN_LIMITS_ID = 18
INVALID_HOURS_COUNT_ID = 19
INVALID_DATE_FORMAT_ID = 20
INVALID_TIME_FORMAT_ID = 21
INVALID_PAGE_NUM_ID = 22
INVALID_USER_TYPE_ID = 23

SERVER_MESSAGES = {}
SERVER_MESSAGES[SUCCESS_ID] = "Success"
SERVER_MESSAGES[INVALID_CREDENTIALS_ID] = "Invalid credentials"
SERVER_MESSAGES[INVALID_PARAMETERS_ID] = "Invalid parameters"
SERVER_MESSAGES[EMAIL_TAKEN_ID] = "This Email is already taken"
SERVER_MESSAGES[UNAUTHORIZED_ID] = "unauthorized"
SERVER_MESSAGES[FORBIDDEN_ID] = "you don't have the permission for this aciton"
SERVER_MESSAGES[RECORD_NOT_FOUND_ID] = "record not found"
SERVER_MESSAGES[HOURS_LIMIT_EXCEEDED_ID] = "the total hours for this date exceeded 24"
SERVER_MESSAGES[USER_NOT_FOUND_ID] = "user not found"
SERVER_MESSAGES[MISSING_PARAMETERS_ID] = "missing parameters"
SERVER_MESSAGES[END_TIME_BEFORE_START_TIME_ID] = "end time must be after the start time"
SERVER_MESSAGES[TIME_INTERVALS_OVERLAPPING_ID] = "this time interval overlaps with an existing one"
SERVER_MESSAGES[NOTE_EXCEEDED_MAXIMUM_LENGTH_ID] = "the note lenth exceeded the maximum"
SERVER_MESSAGES[PASSWORD_AND_CONFIRMATION_NOT_EQUAL_ID] = "passwowrd and password confirmation are not equal"
SERVER_MESSAGES[PASSWORD_LESS_THAN_MINIMUM_LENGTH_ID] = "password length is less than the minimum"
SERVER_MESSAGES[INVALID_EMAIL_FORMAT_ID] = "invalid email format. example: joe@example.com"
SERVER_MESSAGES[EMAIL_LENGTH_EXCEEDED_MAX_ID] = "email length exceededthe maximum"
SERVER_MESSAGES[NAME_LENGTH_NOT_WITHIN_LIMITS_ID] = "name length is not within the limits"
SERVER_MESSAGES[INVALID_HOURS_COUNT_ID] = "invalid hours count"
SERVER_MESSAGES[INVALID_DATE_FORMAT_ID] = "invalid date format"
SERVER_MESSAGES[INVALID_TIME_FORMAT_ID] = "invalid time format"
SERVER_MESSAGES[INVALID_PAGE_NUM_ID] = "invalid page number"
SERVER_MESSAGES[INVALID_USER_TYPE_ID] = "invalid user type"
