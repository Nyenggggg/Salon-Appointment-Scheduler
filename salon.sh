#! /bin/bash

PSQL="psql -X --username=freecodecamp --dbname=salon --tuples-only -c"
echo -e "\n~~~~~ My Salon ~~~~~\n"
echo "Welcome to My Salon, How can I help you?"
MAIN_MENU () {
  if [[ $1 ]]
  then
    echo -e "\n$1"
  fi

  echo -e "\n1) cut\n2) color\n3) perm\n4) style\n5) trim"
  read SERVICE_ID_SELECTED

  case $SERVICE_ID_SELECTED in
    1) CUT ;;
    2) COLOR ;;
    3) PERM ;;
    4) STYLE ;;
    5) TRIM ;;
    *) MAIN_MENU "I could not find that service. What would you like today?" ;;
  esac
}

CUT () {
  SERVICE=$($PSQL "SELECT name FROM services WHERE service_id = $SERVICE_ID_SELECTED")
  echo -e "\nWhat's your phone number?"
  read CUSTOMER_PHONE
  
  # Check if he/she is already a customer
  CUSTOMER_ID=$($PSQL "SELECT customer_id FROM customers WHERE phone = '$CUSTOMER_PHONE'")

  # If not yet a customer
    if [[ -z $CUSTOMER_ID ]]
    then
      # Add customer
      echo -e "\nI don't have a record for that phone number, what's your name?"
      read CUSTOMER_NAME
      ADD_CUSTOMER_RESULT=$($PSQL "INSERT INTO customers(phone, name) VALUES('$CUSTOMER_PHONE', '$CUSTOMER_NAME')")
      CUSTOMER_ID=$($PSQL "SELECT customer_id FROM customers WHERE name='$CUSTOMER_NAME'")
      
      # Add appointment
      echo -e "\nWhat time would you like your$SERVICE, $CUSTOMER_NAME?"
      read SERVICE_TIME
      ADD_APPOINTMENT_RESULT=$($PSQL "INSERT INTO appointments(customer_id, service_id, time) VALUES($CUSTOMER_ID, $SERVICE_ID_SELECTED, '$SERVICE_TIME')")
      echo -e "\nI have put you down for a$SERVICE at $SERVICE_TIME, $CUSTOMER_NAME."
    else
      # If customer already
      CUSTOMER_NAME=$($PSQL "SELECT name FROM customers WHERE phone='$CUSTOMER_PHONE'")
      echo -e "\nWhat time would you like your$SERVICE,$CUSTOMER_NAME?"
      read SERVICE_TIME
      # Add appointment
      ADD_APPOINTMENT_RESULT=$($PSQL "INSERT INTO appointments(customer_id, service_id, time) VALUES($CUSTOMER_ID, $SERVICE_ID_SELECTED, '$SERVICE_TIME')")
      echo -e "\nI have to put you down for a$SERVICE at $SERVICE_TIME,$CUSTOMER_NAME."
    fi
}

COLOR () {
  SERVICE=$($PSQL "SELECT name FROM services WHERE service_id = $SERVICE_ID_SELECTED")
  echo -e "\nWhat's your phone number?"
  read CUSTOMER_PHONE
  
  # Check if he/she is already a customer
  CUSTOMER_ID=$($PSQL "SELECT customer_id FROM customers WHERE phone = '$CUSTOMER_PHONE'")

  # If not yet a customer
    if [[ -z $CUSTOMER_ID ]]
    then
      # Add customer
      echo -e "\nI don't have a record for that phone number, what's your name?"
      read CUSTOMER_NAME
      ADD_CUSTOMER_RESULT=$($PSQL "INSERT INTO customers(phone, name) VALUES('$CUSTOMER_PHONE', '$CUSTOMER_NAME')")
      CUSTOMER_ID=$($PSQL "SELECT customer_id FROM customers WHERE name='$CUSTOMER_NAME'")
      
      # Add appointment
      echo -e "\nWhat time would you like your$SERVICE, $CUSTOMER_NAME?"
      read SERVICE_TIME
      ADD_APPOINTMENT_RESULT=$($PSQL "INSERT INTO appointments(customer_id, service_id, time) VALUES($CUSTOMER_ID, $SERVICE_ID_SELECTED, '$SERVICE_TIME')")
      echo -e "\nI have put you down for a$SERVICE at $SERVICE_TIME, $CUSTOMER_NAME."
    else
      # If customer already
      CUSTOMER_NAME=$($PSQL "SELECT name FROM customers WHERE phone='$CUSTOMER_PHONE'")
      echo -e "\nWhat time would you like your$SERVICE,$CUSTOMER_NAME?"
      read SERVICE_TIME
      # Add appointment
      ADD_APPOINTMENT_RESULT=$($PSQL "INSERT INTO appointments(customer_id, service_id, time) VALUES($CUSTOMER_ID, $SERVICE_ID_SELECTED, '$SERVICE_TIME')")
      echo -e "\nI have to put you down for a$SERVICE at $SERVICE_TIME,$CUSTOMER_NAME."
    fi
}

PERM () {
  SERVICE=$($PSQL "SELECT name FROM services WHERE service_id = $SERVICE_ID_SELECTED")
  echo -e "\nWhat's your phone number?"
  read CUSTOMER_PHONE
  
  # Check if he/she is already a customer
  CUSTOMER_ID=$($PSQL "SELECT customer_id FROM customers WHERE phone = '$CUSTOMER_PHONE'")

  # If not yet a customer
    if [[ -z $CUSTOMER_ID ]]
    then
      # Add customer
      echo -e "\nI don't have a record for that phone number, what's your name?"
      read CUSTOMER_NAME
      ADD_CUSTOMER_RESULT=$($PSQL "INSERT INTO customers(phone, name) VALUES('$CUSTOMER_PHONE', '$CUSTOMER_NAME')")
      CUSTOMER_ID=$($PSQL "SELECT customer_id FROM customers WHERE name='$CUSTOMER_NAME'")
      
      # Add appointment
      echo -e "\nWhat time would you like your$SERVICE, $CUSTOMER_NAME?"
      read SERVICE_TIME
      ADD_APPOINTMENT_RESULT=$($PSQL "INSERT INTO appointments(customer_id, service_id, time) VALUES($CUSTOMER_ID, $SERVICE_ID_SELECTED, '$SERVICE_TIME')")
      echo -e "\nI have put you down for a$SERVICE at $SERVICE_TIME, $CUSTOMER_NAME."
    else
      # If customer already
      CUSTOMER_NAME=$($PSQL "SELECT name FROM customers WHERE phone='$CUSTOMER_PHONE'")
      echo -e "\nWhat time would you like your$SERVICE,$CUSTOMER_NAME?"
      read SERVICE_TIME
      # Add appointment
      ADD_APPOINTMENT_RESULT=$($PSQL "INSERT INTO appointments(customer_id, service_id, time) VALUES($CUSTOMER_ID, $SERVICE_ID_SELECTED, '$SERVICE_TIME')")
      echo -e "\nI have to put you down for a$SERVICE at $SERVICE_TIME,$CUSTOMER_NAME."
    fi
}

STYLE () {
  SERVICE=$($PSQL "SELECT name FROM services WHERE service_id = $SERVICE_ID_SELECTED")
  echo -e "\nWhat's your phone number?"
  read CUSTOMER_PHONE
  
  # Check if he/she is already a customer
  CUSTOMER_ID=$($PSQL "SELECT customer_id FROM customers WHERE phone = '$CUSTOMER_PHONE'")

  # If not yet a customer
    if [[ -z $CUSTOMER_ID ]]
    then
      # Add customer
      echo -e "\nI don't have a record for that phone number, what's your name?"
      read CUSTOMER_NAME
      ADD_CUSTOMER_RESULT=$($PSQL "INSERT INTO customers(phone, name) VALUES('$CUSTOMER_PHONE', '$CUSTOMER_NAME')")
      CUSTOMER_ID=$($PSQL "SELECT customer_id FROM customers WHERE name='$CUSTOMER_NAME'")
      
      # Add appointment
      echo -e "\nWhat time would you like your$SERVICE, $CUSTOMER_NAME?"
      read SERVICE_TIME
      ADD_APPOINTMENT_RESULT=$($PSQL "INSERT INTO appointments(customer_id, service_id, time) VALUES($CUSTOMER_ID, $SERVICE_ID_SELECTED, '$SERVICE_TIME')")
      echo -e "\nI have put you down for a$SERVICE at $SERVICE_TIME, $CUSTOMER_NAME."
    else
      # If customer already
      CUSTOMER_NAME=$($PSQL "SELECT name FROM customers WHERE phone='$CUSTOMER_PHONE'")
      echo -e "\nWhat time would you like your$SERVICE,$CUSTOMER_NAME?"
      read SERVICE_TIME
      # Add appointment
      ADD_APPOINTMENT_RESULT=$($PSQL "INSERT INTO appointments(customer_id, service_id, time) VALUES($CUSTOMER_ID, $SERVICE_ID_SELECTED, '$SERVICE_TIME')")
      echo -e "\nI have to put you down for a$SERVICE at $SERVICE_TIME,$CUSTOMER_NAME."
    fi
}

TRIM () {
  SERVICE=$($PSQL "SELECT name FROM services WHERE service_id = $SERVICE_ID_SELECTED")
  echo -e "\nWhat's your phone number?"
  read CUSTOMER_PHONE
  
  # Check if he/she is already a customer
  CUSTOMER_ID=$($PSQL "SELECT customer_id FROM customers WHERE phone = '$CUSTOMER_PHONE'")

  # If not yet a customer
    if [[ -z $CUSTOMER_ID ]]
    then
      # Add customer
      echo -e "\nI don't have a record for that phone number, what's your name?"
      read CUSTOMER_NAME
      ADD_CUSTOMER_RESULT=$($PSQL "INSERT INTO customers(phone, name) VALUES('$CUSTOMER_PHONE', '$CUSTOMER_NAME')")
      CUSTOMER_ID=$($PSQL "SELECT customer_id FROM customers WHERE name='$CUSTOMER_NAME'")
      
      # Add appointment
      echo -e "\nWhat time would you like your$SERVICE, $CUSTOMER_NAME?"
      read SERVICE_TIME
      ADD_APPOINTMENT_RESULT=$($PSQL "INSERT INTO appointments(customer_id, service_id, time) VALUES($CUSTOMER_ID, $SERVICE_ID_SELECTED, '$SERVICE_TIME')")
      echo -e "\nI have put you down for a$SERVICE at $SERVICE_TIME, $CUSTOMER_NAME."
    else
      # If customer already
      CUSTOMER_NAME=$($PSQL "SELECT name FROM customers WHERE phone='$CUSTOMER_PHONE'")
      echo -e "\nWhat time would you like your$SERVICE,$CUSTOMER_NAME?"
      read SERVICE_TIME
      # Add appointment
      ADD_APPOINTMENT_RESULT=$($PSQL "INSERT INTO appointments(customer_id, service_id, time) VALUES($CUSTOMER_ID, $SERVICE_ID_SELECTED, '$SERVICE_TIME')")
      echo -e "\nI have to put you down for a$SERVICE at $SERVICE_TIME,$CUSTOMER_NAME."
    fi
}

MAIN_MENU