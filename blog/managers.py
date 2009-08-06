from django.db.models import Manager
import datetime


class PublicManager(Manager):
    """Returns published posts that are not in the future."""
    
    def published(self, project):
        return self.get_query_set().filter(status__gte=2, publish__lte=datetime.datetime.now(), project=project)
