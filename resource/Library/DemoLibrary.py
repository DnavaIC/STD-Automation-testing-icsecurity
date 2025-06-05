import re
from robot.api.deco import keyword

class DemoLibrary:

    """ A Demo Library for Intercon Automation with Robot Framework. """

    ROBOT_LIBRARY_SCOPE = 'SUITE'

    @keyword
    def get_total_minutes(self, time_string):

        """ Converts a time string in the format 'XhYm' to total minutes using regex."""

        hours_match = re.search(r'(\d+)h', time_string)
        minutes_match = re.search(r'(\d+)m', time_string)
        hours = int(hours_match.group(1)) if hours_match else 0
        minutes = int(minutes_match.group(1)) if minutes_match else 0
        return hours * 60 + minutes