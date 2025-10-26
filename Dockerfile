FROM docker.n8n.io/n8nio/n8n
USER root
COPY license_patched.js /usr/lib/node_modules/n8n/dist/license.js
COPY project_service_ee_patched.js /usr/lib/node_modules/n8n/dist/services/project.service.ee.js
COPY insights_service_patched.js /usr/lib/node_modules/n8n/dist/modules/insights/insights.service.js
RUN chmod 644 /usr/lib/node_modules/n8n/dist/license.js && \
    chmod 644 /usr/lib/node_modules/n8n/dist/services/project.service.ee.js && \
	chmod 644 /usr/lib/node_modules/n8n/dist/modules/insights/insights.service.js
USER node