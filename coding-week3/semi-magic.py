import pdb
from csp import *
from random import shuffle

def solve_semi_magic(algorithm=backtracking_search, **args):
    """ From CSP class in csp.py
        vars        A list of variables; each is atomic (e.g. int or string).
        domains     A dict of {var:[possible_value, ...]} entries.
        neighbors   A dict of {var:[var,...]} that for each variable lists
                    the other variables that participate in constraints.
        constraints A function f(A, a, B, b) that returns true if neighbors
                    A, B satisfy the constraint when they have values A=a, B=b
                    """
    # Use the variable names in the figure
    csp_vars = ['V%d'%d for d in range(1,10)]

    #########################################
    # Fill in these definitions

    csp_domains = {f'V{i}':[1,2,3] for i in range(1,10)}
    csp_neighbors = {
        'V1': ['V2', 'V3', 'V4', 'V7', 'V5', 'V9'],
        'V2': ['V1', 'V3', 'V5', 'V8'],
        'V3': ['V1', 'V2', 'V5', 'V7', 'V6', 'V9'],
        'V4': ['V1', 'V7', 'V5', 'V6'],
        'V5': ['V1', 'V2', 'V3', 'V4', 'V6', 'V7', 'V8', 'V9'],
        'V6': ['V3', 'V4', 'V5', 'V9'],
        'V7': ['V1', 'V4', 'V5', 'V3', 'V8', 'V9'],
        'V8': ['V7', 'V2', 'V5', 'V9'],
        'V9': ['V1', 'V5', 'V3', 'V6', 'V7', 'V8'],
    }
    
    def csp_constraints(A, a, B, b):
        return a == b

    #########################################
    
    # define the CSP instance
    csp = CSP(csp_vars, csp_domains, csp_neighbors,
              csp_constraint)

    # run the specified algorithm to get an answer (or None)
    ans = algorithm(csp, **args)
    
    print 'number of assignments', csp.nassigns
    assign = csp.infer_assignment()
    if assign:
        for x in sorted(assign.items()):
            print x
    return csp
