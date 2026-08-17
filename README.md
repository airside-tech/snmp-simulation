
# SNMP simulation with docker compose

In the /src folder you will find following cases and their docker compose equivalent setup.
The port mapping in the Docker compose file will usually not directly use host ports in range like 161 etc. due to high likelyhood of a conflict with other services, forcing you to stop other services etc.

## /src/snmp-container-basic: Basic example for snmp monitoring
Run an SNMP simulator using the tandrup/snmpsim image. It sets up a container named "snmp-test" that listens on 
UDP port 161 for SNMP requests.


## /src/snmp-container-hw-status: HP workstations
HP Workstations fall under the HP Inc. (PC/Printing) division rather than HPE (Enterprise). \[3\]

The relevant MIB structure you are targeting belongs to the HP Client Management framework:

- The Root Enterprise OID: `.1.3.6.1.4.1.11` (Hewlett-Packard)
- The Client Sub-tree: `.1.3.6.1.4.1.11.2.23` (HP Client Management / HP Computer Systems MIB)
- What you can poll/trap: Fan status, chassis thermal sensors, power supply telemetry, physical memory faults, and HP Wolf Security states

## /src/snmp-container-custom-app: Python and pysnmp with Docker containers
HOLD /TODO:
- custom python app using pysnmp
- containerized app

Inspiration:
https://docs.lextudio.com/snmpsim/quick-start


